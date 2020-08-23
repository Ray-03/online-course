import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/components/recent_watch.dart';
import 'package:kantongilmu/models/course.dart';
import 'package:kantongilmu/models/trainer.dart';
import 'course_list_tile.dart';
import 'course_per_tutor.dart';

const List<String> libraryDropdownItems = <String>[
  'Course',
  'Article',
  'Video',
];

final List<Widget> libraryDropdownNavigation = <Widget>[
  LibraryCourse(),
  LibraryArticle(),
  LibraryVideo(),
];

class LibraryCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        RecentWatch(
          course: Course(
            courseID: 'CO001',
            courseTitle: 'Judul Course',
            trainer: Trainer(trainerID: 'TR001', trainerName: 'Nama Trainer'),
            coursePrice: 50000,
          ),
        ),
        CoursePerTutor(
          course: [
            CourseListTile(
              course: Course(
                courseID: 'CO001',
                courseTitle: 'Course Title 1',
                trainer: Trainer(trainerName: 'Trainer 1', trainerID: 'TR001'),
                coursePrice: 10000,
              ),
            ),
            CourseListTile(
              course: Course(
                courseID: 'CO002',
                courseTitle: 'Course Title 2',
                trainer: Trainer(trainerName: 'Trainer 1', trainerID: 'TR001'),
                coursePrice: 20000,
              ),
            ),
            CourseListTile(
              course: Course(
                courseID: 'CO004',
                courseTitle: 'Course Title 3',
                trainer: Trainer(trainerName: 'Trainer 1', trainerID: 'TR001'),
                coursePrice: 30000,
              ),
            ),
          ],
        ),
        CoursePerTutor(
          course: [
            CourseListTile(
              course: Course(
                courseID: 'CO003',
                courseTitle: 'Course Title 1',
                trainer: Trainer(trainerName: 'Trainer 2', trainerID: 'TR002'),
                coursePrice: 10000,
              ),
            ),
            CourseListTile(
              course: Course(
                courseID: 'CO005',
                courseTitle: 'Course Title 2',
                trainer: Trainer(trainerName: 'Trainer 2', trainerID: 'TR002'),
                coursePrice: 10000,
              ),
            ),
            CourseListTile(
              course: Course(
                courseID: 'CO006',
                courseTitle: 'Course Title 3',
                trainer: Trainer(trainerName: 'Trainer 2', trainerID: 'TR002'),
                coursePrice: 30000,
              ),
            ),
            CourseListTile(
              course: Course(
                courseID: 'CO007',
                courseTitle: 'Course Title 4',
                trainer: Trainer(trainerName: 'Trainer 2', trainerID: 'TR002'),
                coursePrice: 10000,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LibraryArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LibraryVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
