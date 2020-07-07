import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

///[LoadingSpinkit] to show non-transparent circular loading on page
class LoadingSpinkit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Center(
        //TODO: change type of [flutter_spinkit] based on design
        child: SpinKitFadingCircle(
          size: 50,
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                  color: index.isEven ? Colors.red : Colors.green),
            );
          },
        ),
      ),
    );
  }
}
