import 'package:flutter/cupertino.dart';
import 'package:houses/src/styles/colors.dart';

class BorderBox extends StatelessWidget {
  const BorderBox({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(8),
    this.height,
    this.width,
  });

  final Widget child;
  final EdgeInsets padding;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(15),
        // note that this is same as css botrder - color, width
        border: Border.all(color: colorGrey.withAlpha(40), width: 2),
      ),
      padding: padding,
      child: Center(
        child: child,
      ),
    );
  }
}
