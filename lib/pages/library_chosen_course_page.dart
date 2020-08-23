import 'package:flutter/material.dart';
import 'package:kantongilmu/components/assignment.dart';
import 'package:kantongilmu/components/course_list.dart';
import 'package:kantongilmu/components/store.dart';
import 'package:kantongilmu/components/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class LibraryChosenCoursePage extends StatelessWidget {
  static String id = '/chosen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool _) {
            return [
              SliverAppBar(
                snap: true,
                floating: true,
                actions: [
                  IconButton(
                    icon: Icon(Icons.chat),
                    onPressed: () {},
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child:
                              Text('Cara membuat design yang baik dan benar'),
                        ),
                        Column(
                          children: [
                            Text('90%'),
                            Text('Progress'),
                          ],
                        ),
                      ],
                    ),
                    VideoPlayerWidget(
                      videoPlayerController: VideoPlayerController.network(
                          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'),
                    ),
                  ],
                ),
              )
            ];
          },
          body: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'Course',
                    ),
                    Tab(
                      text: 'Store Page',
                    ),
                    Tab(
                      text: 'Assignment',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      CourseList(),
                      StorePage(),
                      Assignment(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
