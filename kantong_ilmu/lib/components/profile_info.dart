import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
//  ProfileInfo({@required this.urlProfile});
//  final String urlProfile;
  @override
  Widget build(BuildContext context) {
    String urlProfile = 'https://picsum.photos/500/300';
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(urlProfile),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('Nama'),
              Text('deskripsi'),
              Row(
                children: [
                  Column(
                    children: [
                      Text('0'),
                      Text('Courses'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('0'),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('0'),
                      Text('Following'),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
