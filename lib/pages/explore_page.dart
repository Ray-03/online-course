import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/components/explore_dropdown_data.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String chosenValue = exploreDropdownItems.keys.first;
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.blue,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        dropdownColor: Colors.green,
                        value: chosenValue,
                        icon: Transform.rotate(
                          angle: 90 / 180 * pi,
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        elevation: 16,
                        underline: SizedBox(),
                        onChanged: (String newValue) => setState(
                          () => chosenValue = newValue,
                        ),
                        items: exploreDropdownItems.keys
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.search), onPressed: null),
                ],
              ),
            ),
          ),
        ];
      },
      body: exploreDropdownItems[chosenValue],
    );
  }
}
