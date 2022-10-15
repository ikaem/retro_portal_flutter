import 'package:design_2/src/widgets/product_info_stat.dart';
import 'package:flutter/material.dart';

class ProductScreenInfo extends StatelessWidget {
  const ProductScreenInfo({
    Key? key,
    required this.productData,
    required this.themeData,
  }) : super(key: key);

  final dynamic productData;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                visualDensity: VisualDensity.compact,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "${productData["name"]}",
                  style: themeData.textTheme.headline5,
                ),
                subtitle: RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                      TextSpan(
                        text: "${productData["rest"]}",
                        style: themeData.textTheme.caption,
                      )
                    ],
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\$",
                    style: themeData.textTheme.bodyText1!.apply(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: "${productData["price"]}",
                    style: themeData.textTheme.headline6!.apply(
                      color: Colors.red,
                      fontWeightDelta: 2,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Divider(
          height: 16,
          thickness: 2,
          color: Colors.grey.shade200,
        ),
        SizedBox(
          height: 50.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ProductInfoStat(
                width: size.width / 3,
                icon: Icons.star,
                iconColor: Colors.orange,
                label: "${productData["rating"]}",
              ),
              ProductInfoStat(
                width: size.width / 3,
                icon: Icons.hourglass_bottom,
                iconColor: Colors.red,
                label: "18 mins",
              ),
              ProductInfoStat(
                width: size.width / 3,
                icon: Icons.screen_lock_portrait_rounded,
                iconColor: Colors.greenAccent,
                label: "2.3 km",
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
          thickness: 2,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}
