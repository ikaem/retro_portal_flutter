import 'package:design_2/src/data/fake_data.dart';
import 'package:design_2/src/theme/colors.dart';
import 'package:flutter/material.dart';

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final double itemWidth = width * 0.25;
    final double height = width * 0.35;

    return SizedBox(
      width: width,
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: kCategories.map((c) {
          return Container(
            margin: const EdgeInsets.only(right: 10.0),
            width: itemWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset("assets/images/${c["image"]}"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "${c["name"]}",
                    style: themeData.textTheme.bodyText2!
                        .apply(color: kColorBlack),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
