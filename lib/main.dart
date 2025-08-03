import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surf_interesting_places/common/uikit/themes/app_themes.dart';
import 'package:surf_interesting_places/features/tutorial/presentation/tutorial_screen.dart';
import 'common/l10n/app_localizations.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: 'main_page',
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        name: 'tutorial',
        path: '/tutorial',
        builder: (context, state) => TutorialScreen(),
      ),
    ],
  );

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: AppThemes.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (true) context.goNamed('tutorial');
    });
    return Scaffold(
      body: Placeholder(),
    );
  }
}
