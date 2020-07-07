import 'package:flutter/material.dart';
import 'package:kantongilmu/components/profile_tab_data.dart';
import 'package:kantongilmu/components/profile_videos.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: profileTabs,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ///consist of video and article tab
                ProfileVideo(),
                //TODO: Move ListView.builder to a Article class
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Text('$index');
                  },
                  itemCount: 10, //TODO: get content from Firestore
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
