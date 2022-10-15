import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.width,
    required this.productData,
  });

  final double width;
  // dont use dynamic
  final dynamic productData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final double height = width * 4 / 3 + 40;

    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: width,
      height: height,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // what is the use of this
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // this alone piositions the image wrong  - it will go all the way up the stack
                Center(
                  child: Image.asset(
                    "assets/images/${productData["image"]}",
                    width: width * 0.8,
                  ),
                ),
                // what is the use of this centered expanded
                // oh, it is just to make space between the image and content below
                const Expanded(
                  child: Center(),
                ),
                Text("${productData["name"]}"),
                const SizedBox(
                  height: 5,
                ),
                RichText(
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: RichText(
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          const WidgetSpan(
                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                          ),
                          TextSpan(
                              text: "${productData["rating"]}",
                              style: themeData.textTheme.subtitle2!.apply(
                                // so font we ight delta will increase the current fotnwieght on the default by the amount - 4 in this case
                                fontWeightDelta: 4,
                              ))
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: RichText(
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          const TextSpan(
                            text: "\$",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                          TextSpan(
                              text: "${productData["price"]}",
                              style: themeData.textTheme.headline5!
                                  .apply(color: Colors.orange))
                        ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
