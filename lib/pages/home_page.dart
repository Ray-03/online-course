import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text('Kantong Ilmu'),
          actions: [
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () => debugPrint('message'),
              tooltip: 'Open Message',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stories'),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('dummy story'),
                    ),
                  ),
                ),
              ),
              Text('promotions'),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('dummy promotions'),
                    ),
                  ),
                ),
              ),
              Text('Posts for you'),
              Container(
                color: Colors.brown,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://picsum.photos/200'),
                          radius: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Title'),
                            Text('creator'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      height: 250,
                      child: Card(
                        color: Colors.red,
                        child: Center(
                          child: Icon(Icons.play_arrow),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.file_download),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Namanya' + '     '),
                        Text('Deskripsinya...'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.brown,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://picsum.photos/200'),
                          radius: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Title'),
                            Text('creator'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      height: 250,
                      child: Card(
                        color: Colors.red,
                        child: Center(
                          child: Icon(Icons.play_arrow),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.file_download),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Namanya' + '     '),
                        Text('Deskripsinya...'),
                      ],
                    )
                  ],
                ),
              ),
              Text('Articles you may find interesting'),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('title'),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200'),
                            ),
                            Text('name'),
                          ],
                        ),
                        Text('Saturday, 27 June 2020'),
                        Text(
                          'Lorem ipsum dolor sit amet,',
                        )
                      ],
                    ),
                    Icon(FontAwesomeIcons.commentDots),
                    Image(
                      image: NetworkImage('https://picsum.photos/100'),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('title'),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200'),
                            ),
                            Text('name'),
                          ],
                        ),
                        Text('Saturday, 27 June 2020'),
                        Text(
                          'Lorem ipsum dolor sit amet,',
                        )
                      ],
                    ),
                    Icon(FontAwesomeIcons.commentDots),
                    Image(
                      image: NetworkImage('https://picsum.photos/100'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
