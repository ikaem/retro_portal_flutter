import 'package:design_2/src/widgets/product_screen_header.dart';
import 'package:design_2/src/widgets/product_screen_info.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    required this.productData,
  });

  final dynamic productData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductScreenHeader(
                  productData: productData,
                  size: size,
                ),
              ),
            ),
            // info
            // so this sseems not to need expanded
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductScreenInfo(
                productData: productData,
                themeData: themeData,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Overview",
                        style: themeData.textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                          "I want to have horizontal scrollable listView with ListTiles. But without ListTile it works fine . With ListTile it is causing an error.How to solve it? I tried giving it the width but didn't work. Error: BoxConstraints forces an infinite width. These invalid constraints were provided to RenderParagraph's layout() function by the following function, which probably computed the invalid constraints in question. I want to have horizontal scrollable listView with ListTiles. But without ListTile it works fine . With ListTile it is causing an error.How to solve it? I tried giving it the width but didn't work. Error: BoxConstraints forces an infinite width. These invalid constraints were provided to RenderParagraph's layout() function by the following function, which probably computed the invalid constraints in question. I want to have horizontal scrollable listView with ListTiles. But without ListTile it works fine . With ListTile it is causing an error.How to solve it? I tried giving it the width but didn't work. Error: BoxConstraints forces an infinite width. These invalid constraints were provided to RenderParagraph's layout() function by the following function, which probably computed the invalid constraints in question. I want to have horizontal scrollable listView with ListTiles. But without ListTile it works fine . With ListTile it is causing an error.How to solve it? I tried giving it the width but didn't work. Error: BoxConstraints forces an infinite width. These invalid constraints were provided to RenderParagraph's layout() function by the following function, which probably computed the invalid constraints in question."),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class BorderedBox extends StatelessWidget {
//   const BorderedBox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(4.0),
//       decoration: BoxDecoration(
//           color: Colors.pink.shade200,
//           borderRadius: BorderRadius.circular(50.0)),
//       child: IconButton(
//         onPressed: () {},
//         icon: const Icon(
//           Icons.arrow_back,
//           color: Colors.pink,
//         ),
//       ),
//     );
//   }
// }
