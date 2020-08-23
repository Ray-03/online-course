import 'package:flutter/material.dart';
import 'package:kantongilmu/models/course.dart';
import 'package:kantongilmu/pages/library_chosen_course_page.dart';

class CourseListTile extends StatelessWidget {
  final Course course;
  CourseListTile({this.course});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('https://picsum.photos/200'),
      title: Text(course.courseTitle),
      subtitle: Text(course.trainer.trainerName),
      onTap: () {
        Navigator.pushNamed(context, LibraryChosenCoursePage.id);
      },
    );
  }
}
