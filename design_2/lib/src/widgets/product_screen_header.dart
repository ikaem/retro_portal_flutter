import 'package:design_2/src/widgets/bordered_box.dart';
import 'package:flutter/material.dart';

class ProductScreenHeader extends StatelessWidget {
  const ProductScreenHeader({
    Key? key,
    required this.productData,
    required this.size,
  }) : super(key: key);

  final dynamic productData;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey.shade200,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/${productData["image"]}"),
        ),
        SizedBox(
          width: size.width,
          // height: size.height,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BorderedBox(
                  backgroundColor: Colors.pink.shade200,
                  borderRadius: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: BorderedBox(
                  backgroundColor: Colors.red,
                  borderRadius: 50,
                  shadow: BoxShadow(
                    color: Colors.black.withAlpha(30),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
