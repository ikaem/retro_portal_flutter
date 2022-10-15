import 'package:flutter/material.dart';

class ProductInfoStat extends StatelessWidget {
  const ProductInfoStat({
    super.key,
    required this.width,
    required this.icon,
    required this.iconColor,
    required this.label,
  });

  final double width;
  final IconData icon;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SizedBox(
      width: width,
      child: ListTile(
        minLeadingWidth: 10,
        dense: true,
        contentPadding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        leading: Icon(
          icon,
          size: 20,
          color: iconColor,
        ),
        title: Text(
          label,
          style: themeData.textTheme.labelMedium!.apply(
            fontWeightDelta: 2,
          ),
        ),
      ),
    );
  }
}
