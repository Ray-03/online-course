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
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  snap: false,
                  leading: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => null,
                  ),
                  title: Text('Your Name'),
                  centerTitle: true,
                  expandedHeight: 250,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.only(top: kToolbarHeight),
                    child: ProfileInfo(),
                  ),
                  bottom: TabBar(tabs: profileTabs),
                ),
              ];
            },
            body: TabBarView(
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
        ),
//        body: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: [
//            //TODO: Make [ProfileInfo] scrollable
//            ProfileInfo(),
//            //TODO: Make [ProfileTab] header pinned when scrolled
//            ProfileTab(tabController: _tabController),
//          ],
//        ),
      ),
    );
  }
}
