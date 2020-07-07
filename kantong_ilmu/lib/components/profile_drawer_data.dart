import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/pages/my_account_page.dart';

final List<List> settingsOptionsDataOne = [
  [FontAwesomeIcons.heart, 'WISHLIST', null],
  [Icons.trending_up, 'STATISTICS', null],
  [FontAwesomeIcons.bell, 'NOTIFICATIONS', null],
  [Icons.account_circle, 'MY ACCOUNT', MyAccount.id],
//  [FontAwesomeIcons.wallet, 'MY WALLET',],
  [Icons.account_balance_wallet, 'MY WALLET', null],
  [FontAwesomeIcons.tv, 'DISPLAY', null],
  [FontAwesomeIcons.userShield, 'SECURITY', null],
  [Icons.history, 'PURCHASE HISTORY', null],
];

final List<List> settingsOptionsDataTwo = [
  [Icons.help_outline, 'HELP', null],
  [Icons.info_outline, 'ABOUT', null],
//  [null, 'LOGOUT', null],
];

class DrawerBody extends StatelessWidget {
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
    return ListBody(
      children: drawer,
    );
  }
}
