import 'package:flutter/material.dart';
import 'package:houses/src/data/sample_data.dart';
import 'package:houses/src/styles/colors.dart';
import 'package:houses/src/widgets/border_box.dart';
import 'package:houses/src/widgets/choice_option.dart';
import 'package:houses/src/widgets/option_button.dart';
import 'package:houses/src/widgets/real_estate_item.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double padding = 25;
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    const EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          // note this that it actually uses sized box for some reason
          // why is this - would it all work without it?
          // would column overflow
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                // this has default of cross axis alignment of center for some reason?
                // pšossibly, this might be why the title on the bottom bar at work is in the center?
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // why not wrap column into padding
                  const SizedBox(
                    height: padding,
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BorderBox(
                          child: Icon(Icons.menu),
                        ),
                        BorderBox(
                          child: Icon(Icons.settings),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: padding,
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: textTheme.bodyText2,
                    ),
                  ),
                  const SizedBox(
                    height: padding / 2,
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Text("San Francisco", style: textTheme.headline1),
                  ),
                  const Padding(
                    padding: sidePadding,
                    child: Divider(
                      height:
                          padding, // this is 25 - but this is only white space
                      color: colorGrey,
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ChoiceOption(text: "Option 1"),
                        ChoiceOption(text: "Option 2"),
                        ChoiceOption(text: "Option 3"),
                        ChoiceOption(text: "Option 4"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: padding / 2,
                  ),

// expanded here is a child direct of a column
// expanded will foce list vuew to have constrained size, so it has something to scroll in
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          // return const Text("item");
                          return RealEstateItem(itemData: RE_DATA[0]);
                        },
                      ),
                    ),
                  )
                ],
              ),

              //

              Positioned(
                bottom: 10,
                width: MediaQuery.of(context).size.width,
                // left: MediaQuery.of(context).size.width / 2 - 37,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map,
                    text: "Map View",
                    width: 150.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
