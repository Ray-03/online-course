import 'package:flutter/cupertino.dart';
import 'package:kantongilmu/models/trainer.dart';

class Course {
  String courseID;
  String courseTitle;
  Trainer trainer;
  int coursePrice;

  Course(
      {@required this.courseID,
      @required this.courseTitle,
      @required this.trainer,
      @required this.coursePrice});
}
