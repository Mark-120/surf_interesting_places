// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get helloWorld => 'Привет, мир!';

  @override
  String get tutorialTitle1 => 'Добро пожаловать в Путеводитель';

  @override
  String get tutorialSubtitle1 => 'Ищи новые локации и сохраняй самые любимые.';

  @override
  String get tutorialTitle2 => 'Построй маршрут и отправляйся в путь';

  @override
  String get tutorialSubtitle2 =>
      'Достигай цели максимально быстро и комфортно.';

  @override
  String get tutorialTitle3 => 'Добавляй места, которые нашёл сам';

  @override
  String get tutorialSubtitle3 =>
      'Делись самыми интересными и помоги нам стать лучше!';

  @override
  String get tutorialSkipButton => 'Пропустить';

  @override
  String get tutorialContinueButton => 'ПРОДОЛЖИТЬ';
}
