import 'package:flutter/foundation.dart';
import 'package:kantongilmu/models/trainer.dart';

enum CourseCategory {
  Japanese,
  Sport,
  Computer,
  Cook,
  Architect,
}

class Course {
  String courseID;
  String courseTitle;
  String courseImageCover;
  double coursePrice;
  Trainer trainer;
  CourseCategory courseCategory;

  Course(
      {@required this.courseID,
      @required this.courseTitle,
      @required this.trainer,
      @required this.coursePrice,
      this.courseImageCover,
      this.courseCategory});
}
