import 'package:flutter/material.dart';
import 'package:surf_interesting_places/common/uikit/themes/app_colors.dart';
import 'package:surf_interesting_places/common/uikit/themes/app_text_styles.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.lightGreen,
      secondary: AppColors.lightMainText,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.largeTitle.copyWith(
        color: AppColors.lightSecondaryText,
      ),
      headlineMedium: AppTextStyles.title.copyWith(
        color: AppColors.lightSecondaryText,
      ),
      headlineSmall: AppTextStyles.subtitle.copyWith(
        color: AppColors.lightSecondaryText,
      ),
      titleMedium: AppTextStyles.regularText.copyWith(
        color: AppColors.lightSecondaryText,
      ),
      titleSmall: AppTextStyles.smallBold.copyWith(
        color: AppColors.lightSecondaryText,
      ),
      bodyMedium: AppTextStyles.smallText.copyWith(
        color: AppColors.lightSecondaryText,
      ),
      bodySmall: AppTextStyles.superSmallText.copyWith(
        color: AppColors.lightSecondaryText,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.buttonText,
        foregroundColor: AppColors.lightGreen,
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.darkGreen,
      secondary: AppColors.darkMainText,
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkMainText,
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.largeTitle.copyWith(
        color: AppColors.darkWhite,
      ),
      headlineMedium: AppTextStyles.title.copyWith(color: AppColors.darkWhite),
      headlineSmall: AppTextStyles.subtitle.copyWith(
        color: AppColors.darkWhite,
      ),
      titleMedium: AppTextStyles.regularText.copyWith(
        color: AppColors.darkWhite,
      ),
      titleSmall: AppTextStyles.smallBold.copyWith(color: AppColors.darkWhite),
      bodyMedium: AppTextStyles.smallText.copyWith(color: AppColors.darkWhite),
      bodySmall: AppTextStyles.superSmallText.copyWith(
        color: AppColors.darkWhite,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.buttonText,
        foregroundColor: AppColors.darkGreen,
      ),
    ),
  );
}
