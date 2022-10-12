import 'package:design_2/src/screens/landing_screen.dart';
import 'package:design_2/src/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        return MaterialApp(
          title: "Screen 2",
          theme: ThemeData(textTheme: defaultTextTheme
              // colorScheme: defaultColorScheme
              ),
          home: const LandingScreen(),
        );
        // home: const Text("hello temp"));
      },
    );
  }
}
