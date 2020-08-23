import 'package:flutter/material.dart';
import 'package:kantongilmu/models/course.dart';
import 'bordered_container.dart';

class RecentWatch extends StatelessWidget {
  final Course course;
  RecentWatch({
    this.course,
  });
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BorderedContainer(
        trainerName: course.trainer.trainerName,
        child: Column(
          children: [
            Stack(
              children: [
                Opacity(
                  child: Image.network(
                    'https://www.w3schools.com/w3css/img_lights.jpg',
                    fit: BoxFit.cover,
                  ),
                  opacity: 0.55,
                ),
                Text('Continue This Course'),
              ],
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(course.courseTitle),
                    Text(course.trainer.trainerName),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
