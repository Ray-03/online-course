import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/components/course_rating_bar_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:kantongilmu/components/explore_course_data.dart';
import 'package:kantongilmu/components/video_player_widget.dart';
import 'package:kantongilmu/pages/explore_suggested.dart';
import 'package:kantongilmu/pages/explore_this_tutor.dart';
import 'package:video_player/video_player.dart';
import 'about_this_course_page.dart';

class ExploreChosenCourse extends StatelessWidget {
  static String id = '/product';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Judul Course',
                style: TextStyle(fontSize: 30, color: Colors.amber.shade500),
              ),
              Text(
                'Nama Tutor',
                style: TextStyle(color: Colors.amber.shade500),
              ),
              VideoPlayerWidget(
                videoPlayerController: VideoPlayerController.network(
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  children: [
                    SizedBox(
                      width: 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4.7',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.star),
                            ],
                          ),
                          Text(
                            '1.5K Reviews',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      endIndent: 10,
                      indent: 10,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 100,
                      child: Column(
                        children: [
                          Text(
                            '2k',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Bought',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      endIndent: 10,
                      indent: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: Column(
                        children: [
                          Text(
                            '8',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Parts',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      endIndent: 10,
                      indent: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Rp 50.000',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                color: Colors.brown,
                onPressed: () {},
                child: Text('Add to Cart'),
              ),
              //
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.network(
                      'https://picsum.photos/1600/1200',
                      fit: BoxFit.cover,
                    ),
                  ),
                  itemCount: 5,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: ListTile(
                  title: Text('About This Course'),
                  subtitle: Text('Penjelasan singkat tentang course ini'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(context, AboutThisCoursePage.id);
                  },
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Chip(
                      label: Text('Category 1'),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    Chip(
                      label: Text('Category 2'),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text('4.7'),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star_half),
                          ],
                        ),
                        Text('2k Customers'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('5'),
                          Icon(Icons.star),
                        ],
                      ),
                      Row(
                        children: [
                          Text('4'),
                          Icon(Icons.star),
                        ],
                      ),
                      Row(
                        children: [
                          Text('3'),
                          Icon(Icons.star),
                        ],
                      ),
                      Row(
                        children: [
                          Text('2'),
                          Icon(Icons.star),
                        ],
                      ),
                      Row(
                        children: [
                          Text('1'),
                          Icon(Icons.star),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 200,
                      width: 50,
                      child: CourseRatingBarChart(
                        data: [
                          RatingSeries(
                            star: '5 *',
                            person: 10000,
                            barColor:
                                charts.ColorUtil.fromDartColor(Colors.blue),
                          ),
                          RatingSeries(
                            star: '4 *',
                            person: 25000,
                            barColor:
                                charts.ColorUtil.fromDartColor(Colors.blue),
                          ),
                          RatingSeries(
                            star: '3 *',
                            person: 900,
                            barColor:
                                charts.ColorUtil.fromDartColor(Colors.blue),
                          ),
                          RatingSeries(
                            star: '2 *',
                            person: 100,
                            barColor:
                                charts.ColorUtil.fromDartColor(Colors.blue),
                          ),
                          RatingSeries(
                            star: '1 *',
                            person: 1000,
                            barColor:
                                charts.ColorUtil.fromDartColor(Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Text('Sound 4.3'),
                        Icon(Icons.star),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        Text('Visual 5'),
                        Icon(Icons.star),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        Text('Teaching 4.7'),
                        Icon(Icons.star),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('see all review'),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage('https://picsum.photos/200'),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Nama orang 1'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border),
                          SizedBox(
                            width: 30,
                          ),
                          Text('22-Feb-2020'),
                        ],
                      ),
                      Text(
                        'The book’s outstanding writing deserves everyone’s attention. It will expand the way you see the world and hopefully impress upon you that no matter our lot in life we all want to be loved, respected and accepted for who we are and we all have gifts to share with the world. It is a believable story with the perfect amount of humor.',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage('https://picsum.photos/200'),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Nama orang 2'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border),
                          SizedBox(
                            width: 30,
                          ),
                          Text('22-Feb-2020'),
                        ],
                      ),
                      Text(
                        'I enjoyed this story so much. I’m speechless. The way this story was told was so original. I highly recommend it to everyone. I’m sure you do not want to put it down, not even for a minute.',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage('https://picsum.photos/200'),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Nama orang 3'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border),
                          SizedBox(
                            width: 30,
                          ),
                          Text('22-Feb-2020'),
                        ],
                      ),
                      Text(
                        'This was a heart-warming love story, filled with twists and turns. I couldn’t put it down and read the whole story in one sitting.',
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, ExploreFromThisTutor.id);
                    },
                    title: Text('From This Trainer'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: courseInExplore.entries.first.value.entries
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fitHeight,
                                        imageUrl:
                                            'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(e.key.courseTitle),
                                        Text(
                                            'Rp. ${e.key.coursePrice.toString()}'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, ExploreSuggested.id);
                    },
                    title: Text('Suggested for You'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: courseInExplore.entries.first.value.entries
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fitHeight,
                                        imageUrl:
                                            'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(e.key.courseTitle),
                                        Text(
                                            'Rp. ${e.key.coursePrice.toString()}'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
