import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surf_interesting_places/common/asset_paths.dart';
import 'package:surf_interesting_places/common/l10n/app_localizations.dart';
import 'package:surf_interesting_places/common/uikit/themes/app_text_styles.dart';

import '../../../common/uikit/themes/app_colors.dart';

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
                      AppLocalizations.of(context)!.tutorialSkipButton,
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
          color: AppColors.inactiveText,
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
          color: Theme.of(context).primaryColor,
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
        svgPath: AssetPaths.tutorial1,
        title: AppLocalizations.of(context)!.tutorialTitle1,
        subtitle: AppLocalizations.of(context)!.tutorialSubtitle1,
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
        svgPath: AssetPaths.tutorial2,
        title: AppLocalizations.of(context)!.tutorialTitle2,
        subtitle: AppLocalizations.of(context)!.tutorialSubtitle2,
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
            svgPath: AssetPaths.tutorial3,
            title: AppLocalizations.of(context)!.tutorialTitle3,
            subtitle: AppLocalizations.of(context)!.tutorialSubtitle3,
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
                        AppLocalizations.of(context)!.tutorialContinueButton,
                        style: AppTextStyles.buttonText.copyWith(
                          color: AppColors.white,
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
            style: Theme.of(context).textTheme.headlineMedium,
            overflow: TextOverflow.clip,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.lightTertiaryText,
            ),
          ),
        ],
      ),
    );
  }
}
