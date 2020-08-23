import 'package:kantongilmu/models/course.dart';
import 'package:kantongilmu/models/trainer.dart';

///Course Category -> Course, Should be displayed or not (in case course dont want to be shown anymore)
Map<CourseCategory, Map<Course, bool>> courseInExplore = {
  CourseCategory.Japanese: {
    Course(
      courseID: 'CO001',
      courseTitle: 'Learn Hiragana',
      coursePrice: 10000,
      trainer: Trainer(trainerID: 'TR001', trainerName: 'Hanate Wakuso Civic'),
    ): true,
    Course(
      courseID: 'CO002',
      courseTitle: 'Learn Hiragana',
      coursePrice: 20000,
      trainer: Trainer(trainerID: 'TR002', trainerName: 'Shiseo Tadashite'),
    ): false,
    Course(
      courseID: 'CO007',
      courseTitle: 'Daily Katakana',
      coursePrice: 20000,
      trainer:
          Trainer(trainerID: 'TR003', trainerName: 'Suzuki Honda Teriyaki'),
    ): false,
  },
  CourseCategory.Sport: {
    Course(
      courseID: 'CO003',
      courseTitle: 'How to Bite',
      coursePrice: 30000,
      trainer: Trainer(trainerID: 'TR004', trainerName: 'Luis Suarez'),
    ): true,
    Course(
      courseID: 'CO009',
      courseTitle: 'Jump Higher',
      coursePrice: 40000,
      trainer: Trainer(trainerID: 'TR005', trainerName: 'Kangaroo'),
    ): true,
  },
  CourseCategory.Computer: {
    Course(
      courseID: 'CO004',
      courseTitle: 'Competitive Programming 1',
      coursePrice: 4000,
      trainer: Trainer(trainerID: 'TR006', trainerName: 'Felix J'),
    ): true,
    Course(
      courseID: 'CO008',
      courseTitle: 'Competitive Programming 2',
      coursePrice: 20000,
      trainer: Trainer(trainerID: 'TR006', trainerName: 'Felix J'),
    ): true,
    Course(
      courseID: 'CO005',
      courseTitle: 'Basic Algorithm',
      coursePrice: 500000,
      trainer: Trainer(trainerID: 'TR007', trainerName: 'Tushar Roy'),
    ): false,
  },
  CourseCategory.Cook: {
    Course(
      courseID: 'CO006',
      courseTitle: 'Cooking with Gordon Ramsay',
      coursePrice: 6000000,
      trainer: Trainer(trainerID: 'TR008', trainerName: 'Gordon Ramsay'),
    ): true,
  },
  CourseCategory.Architect: {
    Course(
      courseID: 'CO007',
      courseTitle: 'Cara Membuat Arsitek Rumah Duka',
      coursePrice: 7000000,
      trainer:
          Trainer(trainerID: 'TR009', trainerName: 'Samuel Steven Dharmawan'),
    ): false,
  },
};
