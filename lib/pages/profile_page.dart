import 'package:flutter/material.dart';
import 'package:kantongilmu/components/profile_drawer.dart';
import 'package:kantongilmu/components/profile_info.dart';
import 'package:kantongilmu/components/profile_tab_data.dart';
import 'package:kantongilmu/components/profile_videos.dart';

///[ProfilePage] to change user profile, settings and manage posts of user
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: ProfileDrawer(),
        appBar: AppBar(
          title: Text('NickName'),
          elevation: 5,
        ),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
//            physics: AlwaysScrollableScrollPhysics(),
            headerSliverBuilder: (context, _) {
              return [
                SliverToBoxAdapter(
                  child: ProfileInfo(),
                ),
              ];
            },
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.videocam),
                    ),
                    Tab(
                      icon: Icon(Icons.create),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ProfileVideo(),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return Text('$index');
                        },
                        itemCount: 10, //TODO: get content from Firestore
                      ),
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
