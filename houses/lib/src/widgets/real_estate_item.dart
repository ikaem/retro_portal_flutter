import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:houses/src/styles/colors.dart';
import 'package:houses/src/utils/helpers/format_currency.dart';
import 'package:houses/src/widgets/border_box.dart';

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({
    super.key,
    required this.itemData,
  });

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    final roomsCount = itemData["bedrooms"];
    final bathroomsCount = itemData["bathrooms"];
    final area = itemData["area"];

    final facilitiesLabel =
        "$roomsCount bedrooms / $bathroomsCount bathrooms / $area sqft";

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  itemData["image"],
                ),
              ),
              const Positioned(
                top: 16.0,
                right: 16.0,
                child: BorderBox(
                  child: Icon(
                    Icons.favorite_border,
                    color: colorBlack,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "${formatCurrency(itemData["amount"])}",
                style: themeData.textTheme.headline1,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${itemData["address"]}",
                style: themeData.textTheme.bodyText2,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            facilitiesLabel,
            style: themeData.textTheme.headline5,
          )
        ],
      ),
    );
  }
}
