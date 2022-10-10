import 'package:flutter/material.dart';
import 'package:houses/src/styles/colors.dart';
import 'package:houses/src/widgets/border_box.dart';
import 'package:houses/src/widgets/choice_option.dart';

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
          width: size.width,
          height: size.height,
          child: Column(
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
                  height: padding, // this is 25 - but this is only white space
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
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const Text("item");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
