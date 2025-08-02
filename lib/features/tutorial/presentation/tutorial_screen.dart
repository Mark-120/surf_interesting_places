import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    // int pageCounter = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Пропустить'),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            children: [WelcomeSubpage(), RouteSubpage(), FavouriteSubpage()],
            onPageChanged: (int n) {},
          ),
        ],
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
        title: 'Добро пожаловать в Путеводитель',
        subtitle: 'Ищи новые локации и сохраняй самые любимые. ',
        svgPath: 'assets/icons/tutorial_1.svg',
      ),
    );
  }
}

class RouteSubpage extends StatelessWidget {
  const RouteSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FavouriteSubpage extends StatelessWidget {
  const FavouriteSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _SubpageContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String svgPath;

  const _SubpageContent({
    required this.title,
    required this.subtitle,
    required this.svgPath,
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
          SizedBox(height: 8,),
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
