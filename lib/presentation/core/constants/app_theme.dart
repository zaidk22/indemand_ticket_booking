




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';

import 'app_text_theme.dart';

class AppTheme {
  static ThemeData get dark => ThemeData.dark().copyWith(
        textTheme: AppTextTheme.dark,
      );
  // ignore: long-method
  static ThemeData get light => ThemeData.light().copyWith(
        // textTheme: GoogleFonts.robotoTextTheme(),
        primaryColor: const Color(0xFF2A59C3),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CustomColor.containerColor,
        primaryTextTheme: AppTextTheme.light,
        primaryIconTheme: const IconThemeData(),
        appBarTheme: const AppBarTheme(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: GoogleFonts.roboto(
              color: CustomColor.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        dialogTheme: DialogTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        // colorScheme: ColorScheme(background: Colors.white),
      );
  static TextStyle linkStyle = dark.textTheme.bodyMedium!.copyWith(
    shadows: const [
      Shadow(
        offset: Offset(0, -3),
      ),
    ],
    color: Colors.transparent,
    decoration: TextDecoration.underline,
    decorationColor: CustomColor.containerColor,
    decorationThickness: 2,
  );
}
