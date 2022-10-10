import 'package:flutter/material.dart';
import 'package:houses/src/styles/colors.dart';

class ChoiceOption extends StatelessWidget {
  const ChoiceOption({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorGrey.withAlpha(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      margin: const EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}
