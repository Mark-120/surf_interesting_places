import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions:
            currentPage != 2
                ? [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Пропустить',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        color: Color(0xFF4CAF50),
                      ),
                    ),
                  ),
                ]
                : null,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 115),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageIndicator(
                    currentPage: currentPage,
                  ),
                ],
              ),
            ),
          ),
          PageView(
            children: [WelcomeSubpage(), RouteSubpage(), FavouriteSubpage()],
            onPageChanged: (int n) {
              setState(() => currentPage = n);
            },
          ),
        ],
      ),
    );
  }
}

class PageIndicator extends StatefulWidget {
  final int currentPage;
  const PageIndicator({super.key, required this.currentPage});

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.currentPage == 0 ? FullPageIndicator() : EmptyPageIndicator(),
        SizedBox(
          width: 8,
        ),
        widget.currentPage == 1 ? FullPageIndicator() : EmptyPageIndicator(),
        SizedBox(
          width: 8,
        ),
        widget.currentPage == 2 ? FullPageIndicator() : EmptyPageIndicator(),
      ],
    );
  }
}

class EmptyPageIndicator extends StatelessWidget {
  const EmptyPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 8,
      height: 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey,
        ),
      ),
    );
  }
}

class FullPageIndicator extends StatelessWidget {
  const FullPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF4CAF50),
        ),
      ),
    );
  }
}

class WelcomeSubpage extends StatelessWidget {
  const WelcomeSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _SubpageContent(
        svgPath: 'assets/icons/tutorial_1.svg',
        title: 'Добро пожаловать в Путеводитель',
        subtitle: 'Ищи новые локации и сохраняй самые любимые.',
      ),
    );
  }
}

class RouteSubpage extends StatelessWidget {
  const RouteSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _SubpageContent(
        svgPath: 'assets/icons/tutorial_2.svg',
        title: 'Построй маршрут и отправляйся в путь',
        subtitle: 'Достигай цели максимально быстро и комфортно.',
      ),
    );
  }
}

class FavouriteSubpage extends StatelessWidget {
  const FavouriteSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: _SubpageContent(
            svgPath: 'assets/icons/tutorial_3.svg',
            title: 'Добавляй места, которые нашёл сам',
            subtitle: 'Делись самыми интересными и помоги нам стать лучше!',
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Card(
                color: Color(0xFF4CAF50),
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: Center(
                      child: Text(
                        'ПРОДОЛЖИТЬ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SubpageContent extends StatelessWidget {
  final String svgPath;
  final String title;
  final String subtitle;

  const _SubpageContent({
    required this.svgPath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            svgPath,
            colorFilter: ColorFilter.mode(Color(0xFF252849), BlendMode.srcIn),
            width: 104,
            height: 104,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xFF3B3E5B),
              height: 1.2,
            ),
            overflow: TextOverflow.clip,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Color(0xFF7C7E92),
            ),
          ),
        ],
      ),
    );
  }
}
