import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:houses/src/styles/colors.dart';

class OptionButton extends StatelessWidget {
  const OptionButton(
      {super.key, required this.text, required this.icon, required this.width});

  final String text;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 32.0,
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(text),
        style: TextButton.styleFrom(
          backgroundColor: colorDarkBlue,
          // not needed because the sized box has widht
          // minimumSize: Size(width, 24.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.all(
            //   Radius.circular(22),
            // ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
