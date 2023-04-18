import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/theme/theme_constant.dart';

TextStyle montserratBold = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: AppColors.darkBlue,
);

TextStyle montserratNormalColored = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: AppColors.darkBlue,
);

TextStyle montserratNormal = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: AppColors.darkBlue,
);

const double defaultPadding = 16;

// default elevation
const double defaultElevation = 8;

// default iconButton splash radius
const double defaultSplashRadius = 20;

// default circularRadius
const double defaultCircularRadius = 15;

// default Radius Card
const double defaultCircularRadiusCard = 10;

ThemeData get dateTimePickerTheme => ThemeData(
      textTheme: const TextTheme(
        labelSmall: TextStyle(fontSize: 20),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightblue,
        primary: AppColors.darkBlue,
      ),
    );
