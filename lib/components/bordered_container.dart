import 'package:flutter/material.dart';

class BorderedContainer extends StatelessWidget {
  final containerColour = Colors.brown;
  final borderColour = Colors.amber;
  final Widget child;
  final String trainerName;
  BorderedContainer({this.child, this.trainerName});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: containerColour,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColour,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle,
            ),
            child: child,
          ),
          Positioned(
            left: 20,
            child: Container(
              color: containerColour,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                trainerName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
