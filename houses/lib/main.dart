import 'package:flutter/material.dart';
import 'package:houses/src/screens/landing_page.dart';
import "dart:ui";

import 'package:houses/src/styles/colors.dart';
import 'package:houses/src/styles/text_theme.dart';

void main() async {
  // this is from dart:ui
  final double screenWidth = window.physicalSize.width;
  runApp(
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Design 1",
      // he basically composes theme data here
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: colorDarkBlue,
          primary: colorWhite,
        ),
        fontFamily: "Montserrat",
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
      ),
      home: const LandingPage(),
    ),
  );
}
