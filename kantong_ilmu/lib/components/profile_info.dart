import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  ///consist of profile picture, name, description, courses, followers, following
  @override
  Widget build(BuildContext context) {
    String urlProfile =
        'https://picsum.photos/500/300'; //TODO: Get real image from Firestore
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///Profile Picture of user
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(urlProfile),
          ),
          Spacer(),

          ///User data
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
