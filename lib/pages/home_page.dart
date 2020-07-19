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
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: () {},
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
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: () {},
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
              ),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pellentesque quis arcu eget egestas. Vestibulum et fringilla sem, ac vulputate dolor. Phasellus et eleifend mi, at accumsan augue. Nulla ex sapien, aliquam a nisi vitae, vehicula mattis elit. Aliquam placerat tortor vel scelerisque facilisis. Nunc at dignissim lectus, sed pulvinar neque. Nunc ut leo eu elit euismod eleifend nec a ex. Pellentesque volutpat condimentum auctor. Praesent sit amet turpis quis diam imperdiet congue et vel ante. Sed lobortis sodales lectus. Nunc non rutrum purus. Aliquam nulla eros, feugiat id convallis ac, hendrerit quis neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque porttitor faucibus tellus, vitae sodales felis tincidunt quis. Donec eu luctus neque, eget sollicitudin dui. Mauris sed finibus sem. Aenean nec commodo tellus, sit amet tempor sem. Donec id tempor turpis. Nulla porta faucibus pharetra. Ut quis ex lacus. Vestibulum scelerisque sodales neque. Morbi iaculis condimentum fermentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed posuere, justo dignissim dignissim rhoncus, mauris turpis consequat dolor, nec suscipit turpis nisl non tellus. Pellentesque diam orci, malesuada sit amet tincidunt eget, eleifend eget neque. Quisque gravida tincidunt luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed placerat orci. Aenean viverra massa sed nulla sagittis scelerisque. Aliquam tempor bibendum lobortis. Mauris arcu urna, accumsan et interdum et, elementum id ipsum. Sed et neque ut felis auctor tincidunt. Praesent leo lectus, rhoncus in urna vel, placerat venenatis neque. Vestibulum commodo eu metus sed iaculis. Suspendisse vel lacinia tellus. Nam molestie luctus mi, quis efficitur tellus. Nulla dictum dolor laoreet, hendrerit tellus sit amet, iaculis odio. Ut a turpis ut eros dignissim lobortis. Curabitur commodo turpis tortor, non venenatis turpis laoreet a. Nunc vitae ante ligula. Vestibulum condimentum neque sed blandit elementum. Cras a massa accumsan magna scelerisque eleifend. Pellentesque vel congue nisi, ut suscipit arcu. Pellentesque luctus dolor in nibh posuere, quis malesuada ante aliquam. Maecenas porta lacus ac rutrum commodo. Sed neque tortor, eleifend at mattis in, mollis ut ex. Nulla rutrum sollicitudin massa. Proin suscipit arcu in commodo hendrerit. Mauris non nisl in lorem sagittis gravida. Etiam ac nunc bibendum, tincidunt massa eget, gravida eros. Donec in tortor tincidunt, luctus neque et, rutrum nisi. Proin convallis, lorem id lobortis fringilla, ante nisl tempus odio, eu convallis diam justo ut augue. Vivamus auctor faucibus lorem eu fringilla. Praesent ultricies libero dolor, nec aliquam nisi luctus vel. Quisque a efficitur felis. Mauris sit amet sodales ligula, id tristique velit. Etiam pharetra vel nulla sit amet tempor. Nunc imperdiet purus in luctus venenatis. Donec tincidunt ultricies lectus, eget fermentum nunc bibendum ac. Pellentesque ac condimentum nibh. Aenean eu ornare eros. Nullam massa purus, rutrum vel erat a, aliquam fermentum est. Morbi placerat sed nibh quis convallis. Nam in tincidunt eros. In placerat accumsan arcu, non dignissim turpis efficitur eu. Nullam euismod tempus leo, sit amet posuere nulla dapibus ac. Fusce sodales rutrum urna, ut facilisis libero tincidunt suscipit. Cras cursus odio auctor aliquam convallis.'),
            ],
          ),
        ),
      ),
    );
  }
}
