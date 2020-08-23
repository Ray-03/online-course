import 'package:kantongilmu/models/course.dart';
import 'package:kantongilmu/models/trainer.dart';

/// [coursesInCart] Check the trainer to get course and selected or not

Map<Trainer, Map<Course, bool>> coursesInCart = {
  Trainer(trainerID: 'TR001', trainerName: 'Trainer A'): {
    Course(
      courseID: 'CO001',
      courseTitle: 'A1',
      coursePrice: 10000,
      trainer: Trainer(trainerID: 'TR001', trainerName: 'Trainer A'),
    ): true,
    Course(
      courseID: 'CO002',
      courseTitle: 'A2',
      coursePrice: 20000,
      trainer: Trainer(trainerID: 'TR001', trainerName: 'Trainer A'),
    ): false,
    Course(
      courseID: 'CO007',
      courseTitle: 'A3',
      coursePrice: 20000,
      trainer: Trainer(trainerID: 'TR001', trainerName: 'Trainer A'),
    ): false,
    Course(
      courseID: 'CO008',
      courseTitle: 'A4',
      coursePrice: 20000,
      trainer: Trainer(trainerID: 'TR001', trainerName: 'Trainer A'),
    ): true,
  },
  Trainer(trainerID: 'TR002', trainerName: 'Trainer B'): {
    Course(
      courseID: 'CO003',
      courseTitle: 'B1',
      coursePrice: 30000,
      trainer: Trainer(trainerID: 'TR002', trainerName: 'Trainer B'),
    ): true,
    Course(
      courseID: 'CO009',
      courseTitle: 'B2',
      coursePrice: 40000,
      trainer: Trainer(trainerID: 'TR002', trainerName: 'Trainer B'),
    ): true,
  },
  Trainer(trainerID: 'TR003', trainerName: 'Trainer C'): {
    Course(
      courseID: 'CO004',
      courseTitle: 'C1',
      coursePrice: 4000,
      trainer: Trainer(trainerID: 'TR003', trainerName: 'Trainer C'),
    ): true,
  },
  Trainer(trainerID: 'TR004', trainerName: 'Trainer D'): {
    Course(
      courseID: 'CO005',
      courseTitle: 'D1',
      coursePrice: 500000,
      trainer: Trainer(trainerID: 'TR004', trainerName: 'Trainer D'),
    ): false,
    Course(
      courseID: 'CO006',
      courseTitle: 'D2',
      coursePrice: 6000000,
      trainer: Trainer(trainerID: 'TR004', trainerName: 'Trainer D'),
    ): true,
  },
  Trainer(trainerID: 'TR005', trainerName: 'Trainer E'): {
    Course(
      courseID: 'CO007',
      courseTitle: 'E1',
      coursePrice: 7000000,
      trainer: Trainer(trainerID: 'TR005', trainerName: 'Trainer E'),
    ): false,
  },
};
