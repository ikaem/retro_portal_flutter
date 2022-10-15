import 'package:design_2/src/data/fake_data.dart';
import 'package:design_2/src/screens/product_screen.dart';
import 'package:design_2/src/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductsScroller extends StatelessWidget {
  const ProductsScroller({
    super.key,
    required this.focusNode,
    required this.itemWidth,
  });

// this needs that focus node thing
// this focus node is actually focus node of the text  field above
  final FocusNode focusNode;
  final double itemWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: kProductData.map((p) {
          // inkwell does not seem to be a widget
          return InkWell(
            onTap: () {
              focusNode.unfocus();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProductScreen(
                      productData: p,
                    );
                  },
                ),
              );
            },
            child: ProductItem(width: itemWidth, productData: p),
          );
        }).toList(),
      ),
    );
  }
}
