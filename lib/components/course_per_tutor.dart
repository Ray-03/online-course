import 'package:flutter/material.dart';
import 'bordered_container.dart';
import 'course_list_tile.dart';

class CoursePerTutor extends StatelessWidget {
  final List<CourseListTile> course;
  CoursePerTutor({this.course});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BorderedContainer(
        trainerName: course.elementAt(0).course.trainer.trainerName,
        child: Column(
          children: course,
        ),
      ),
    );
  }
}
