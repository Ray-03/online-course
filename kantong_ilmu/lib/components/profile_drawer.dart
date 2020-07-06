import 'package:flutter/material.dart';
import 'package:kantongilmu/components/profile_drawer_data.dart';

class ProfileDrawer extends StatelessWidget {
  final List<Widget> drawer = [];
  @override
  Widget build(BuildContext context) {
    for (dynamic data in settingsOptionsDataOne) {
      drawer.add(
        ListTile(
          dense: true,
          leading: Icon(data[0]),
          title: Text(data[1]),
          onTap: () => Navigator.pushNamed(
            context,
            data[2],
          ),
        ),
      );
    }
    drawer.add(
      Divider(
        thickness: 5,
      ),
    );
    for (dynamic data in settingsOptionsDataTwo) {
      drawer.add(
        ListTile(
          dense: true,
          leading: Icon(data[0]),
          title: Text(data[1]),
          onTap: () => Navigator.pushNamed(
            context,
            data[2],
          ),
        ),
      );
    }
    drawer.add(
      ListTile(
        title: Text('Log Out'),
      ),
    );
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
          ListBody(
            children: drawer,
          )
        ],
//
      ),
    );
  }
}
