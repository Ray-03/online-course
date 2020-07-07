import 'package:flutter/material.dart';
import 'package:kantongilmu/components/profile_drawer_data.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 70,
            child: DrawerHeader(
              child: Center(
                child: Text('Drawer Header'),
              ),
              decoration: BoxDecoration(color: Colors.amber),
            ),
          ),
          DrawerBody(),
        ],
//
      ),
    );
  }
}
