import 'package:cartify/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final appLightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    canvasColor: AppColors.lightScaffoldColor,
    scaffoldBackgroundColor: AppColors.lightScaffoldColor,
    cardColor: AppColors.lightCardColor,
    dividerColor: AppColors.lightSplashColor,
    highlightColor: AppColors.lightSplashColor,
    splashColor: AppColors.lightSplashColor,
    disabledColor: AppColors.lightSplashColor,
    dialogBackgroundColor: AppColors.whiteColor,
    indicatorColor: AppColors.primaryColor,
    hintColor: AppColors.lightThemeTextColor,
    textTheme: GoogleFonts.getTextTheme(
      "Poppins",
      TextTheme(
        displayLarge: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: AppColors.lightThemeTextColor,
          fontSize: 15.sp,
        ),
        titleSmall: TextStyle(
          color: AppColors.lightThemeTextColor,
          fontSize: 15.sp,
        ),
        bodyLarge: TextStyle(
          color: AppColors.lightThemeTextColor,
          fontSize: 14.sp,
        ),
      ),
    ),
    primaryTextTheme: GoogleFonts.getTextTheme(
        "Poppins",
        TextTheme(
          headlineSmall: TextStyle(
            color: AppColors.blackColor,
            fontSize: 18.sp,
          ),
          titleMedium: TextStyle(
            color: AppColors.blackColor,
            fontSize: 15.sp,
          ),
          titleSmall: TextStyle(
            color: AppColors.blackColor,
            fontSize: 15.sp,
          ),
          bodyLarge: TextStyle(
            color: AppColors.blackColor,
            fontSize: 14.sp,
          ),
          bodyMedium: TextStyle(
            color: AppColors.blackColor,
            fontSize: 14.sp,
          ),
          bodySmall: TextStyle(
            color: AppColors.blackColor,
            fontSize: 14.sp,
          ),
        )),
    iconTheme: IconThemeData(
      color: AppColors.lightThemeTextColor,
      opacity: 1,
      size: 30.w,
    ),
    primaryIconTheme: IconThemeData(
      color: AppColors.lightThemeTextColor,
      opacity: 1,
      size: 20.w,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: AppColors.lightThemeTextColor,
      unselectedLabelColor: AppColors.lightSplashColor,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.lightCardColor),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
        .copyWith(background: AppColors.primaryColor)
        .copyWith(error: AppColors.errorColor),
  );

  static final appDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    canvasColor: AppColors.darkScaffoldColor,
    scaffoldBackgroundColor: AppColors.darkScaffoldColor,
    cardColor: AppColors.darkScaffoldColor,
    dividerColor: AppColors.darkSplashColor,
    highlightColor: AppColors.darkSplashColor,
    splashColor: AppColors.darkSplashColor,
    disabledColor: AppColors.darkSplashColor,
    dialogBackgroundColor: AppColors.darkScaffoldColor,
    indicatorColor: AppColors.primaryColor,
    hintColor: AppColors.darkThemeTextColor,
    textTheme: GoogleFonts.getTextTheme(
      "Poppins",
      TextTheme(
        headlineSmall: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 18.sp,
        ),
        titleMedium: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 15.sp,
        ),
        titleSmall: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 15.sp,
        ),
        bodyLarge: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 14.sp,
        ),
        bodyMedium: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 14.sp,
        ),
        bodySmall: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 13.sp,
        ),
      ),
    ),
    primaryTextTheme: GoogleFonts.getTextTheme(
      "Poppins",
      TextTheme(
        headlineSmall: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 18.sp,
        ),
        titleMedium: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 15.sp,
        ),
        titleSmall: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 15.sp,
        ),
        bodyLarge: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 14.sp,
        ),
        bodyMedium: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 14.sp,
        ),
        bodySmall: TextStyle(
          color: AppColors.darkThemeTextColor,
          fontSize: 13.sp,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
      opacity: 1,
      size: 30.sp,
    ),
    primaryIconTheme: IconThemeData(
      color: AppColors.primaryColor,
      opacity: 1,
      size: 30.sp,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: AppColors.whiteColor,
      unselectedLabelColor: AppColors.darkSplashColor,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        return null;
      }),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.darkCardColor),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: const MaterialColor(4280361249, {
      50: Color(0xfff2f2f2),
      100: Color(0xffe6e6e6),
      200: Color(0xffcccccc),
      300: Color(0xffb3b3b3),
      400: Color(0xff999999),
      500: Color(0xff808080),
      600: Color(0xff666666),
      700: Color(0xff4d4d4d),
      800: Color(0xff333333),
      900: Color(0xff191919)
    }))
        .copyWith(background: AppColors.primaryColor)
        .copyWith(error: AppColors.errorColor),
  );
}
