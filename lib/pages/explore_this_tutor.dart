import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/components/explore_course_data.dart';
import 'package:kantongilmu/models/course.dart';
import 'chosen_course_page.dart';

class ExploreFromThisTutor extends StatelessWidget {
  static String id = '/same_tutor';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('From this Tutor'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height * 0.7),
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            Course courseIter = courseInExplore.entries.first.value.entries
                .elementAt(index)
                .key;
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ExploreChosenCourse.id,
                );
              },
              child: Card(
                color: Colors.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Center(
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://images.pexels.com/photos/4679168/pexels-photo-4679168.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(courseIter.courseTitle),
                            Text(courseIter.trainer.trainerName),
                            Text(
                              courseIter.coursePrice.toString(),
                            ),
                            Text('***** (30)'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: courseInExplore.entries.first.value.length,
        ),
      ),
    );
  }
}
