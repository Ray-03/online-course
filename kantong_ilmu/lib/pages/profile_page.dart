import 'package:flutter/material.dart';
import 'package:kantongilmu/components/profile_drawer.dart';
import 'package:kantongilmu/components/profile_info.dart';
import 'package:kantongilmu/components/profile_tab.dart';
import 'package:kantongilmu/components/profile_tab_data.dart';

class ProfilePage extends StatefulWidget {
  static String id = 'profile_page';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: profileTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.create),
            onTap: () => debugPrint('edit'),
          ),
          title: Text('namanya nanti disini'),
          centerTitle: true,
        ),
        endDrawer: ProfileDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileInfo(),
            ProfileTab(tabController: _tabController),
          ],
        ),
      ),
    );
  }
}
