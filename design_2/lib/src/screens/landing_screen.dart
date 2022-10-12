import 'package:design_2/src/widgets/search_query.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // this is disabled because text input is always far up, so keyboard would never reach it
        // and i guess have it enabled would mess up the layout, or it would cost more resources?
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            // container is not needed
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: SearchQuery(
                      focusNode: _focusNode,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
