import 'package:flutter/material.dart';

///[displaySize] to get Size of phone display size
Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

///[displayHeight] to get height of phone display size
double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

///[displayWidth] to get height of phone display size
double displayWidth(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}
