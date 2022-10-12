import 'package:design_2/src/theme/colors.dart';
import 'package:flutter/material.dart';

class SearchQuery extends StatelessWidget {
  const SearchQuery({
    super.key,
    required this.focusNode,
  });

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          // because we have expand, i guess this continer will be expanded completely
          color: kColorGreen,
        ),
        Image.asset("assets/images/tree_v.png"),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/avatar.png"),
                    ),
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.white,
                  //   maxRadius: 70,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Image.asset("assets/images/avatar.png"),
                  //   ),
                  // )
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "How hungry are you today",
                      // this is cool - we can modify text theme presets with .apply method
                      style: textTheme.headline5!.apply(color: Colors.white),
                    ),
                  )
                ],
              ),
              TextField(
                focusNode: focusNode,
                cursorColor: Colors.white,
                cursorRadius: const Radius.circular(10.0),
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white24,
                  filled: true,
                  hintText: "Search food items",
                  hintStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  suffixIcon: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
