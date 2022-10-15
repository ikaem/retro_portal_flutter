import 'package:design_2/src/widgets/categories_scroller.dart';
import 'package:design_2/src/widgets/products_scroller.dart';
import 'package:flutter/material.dart';

class FoodChoice extends StatelessWidget {
  const FoodChoice({
    super.key,
    required this.width,
    required this.focusNode,
  });

  final double width;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      width: width,
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
        child: Stack(
          // so this will make contents overflowing clipped or not
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                SizedBox(
                  height: width * 0.3,
                ),
                Row(
                  children: [
                    Text(
                      "Popular foods",
                      style: themeData.textTheme.headline5,
                    ),
                  ],
                ),
                ProductsScroller(
                  focusNode: focusNode,
                  itemWidth: width * 0.5,
                ),
              ],
            ),
            // this needs to be the last item so we can reach it by clicking - otherwise, the products scroller would dover it, and event htough it would be visible, it would not be clickable
            Positioned(
              top: -40.0,
              child: CategoriesScroller(
                width: width,
              ),
            ),
            SizedBox(
              // this is thrid of width
              height: width * 0.35,
            ),
          ],
        ),
      ),
    );
  }
}
