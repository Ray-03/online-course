import 'package:flutter/material.dart';

class TappableCourseCard extends StatelessWidget {
  final String link;
  TappableCourseCard({this.link});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown.shade900,
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            link,
            fit: BoxFit.fill,
            height: 200,
            width: double.infinity,
          ),
          Text('Judul Video'),
          Text('Description'),
        ],
      ),
    );
  }
}
