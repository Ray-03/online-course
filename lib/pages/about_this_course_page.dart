import 'package:flutter/material.dart';

class AboutThisCoursePage extends StatelessWidget {
  static String id = '/about';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cara Membuat Design yang baik dan benar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.yellow.shade800,
              ),
              Text('About This Course'),
              Divider(
                color: Colors.yellow.shade800,
              ),
              Text(
                  'Course ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablablaCourse ini tentang blablabla Course ini tentang blablabla Course ini tentang blablabla'),
              Divider(
                color: Colors.yellow.shade800,
              ),
              Text('Course Info'),
              Divider(
                color: Colors.yellow.shade800,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Release Date'),
                      Text('Trainer'),
                      Text('Sold'),
                      Text('Parts'),
                      Text('Total Duration'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('8 July 2020'),
                      Text('Tutor Name'),
                      Text('200.000'),
                      Text('9'),
                      Text('20h 25m'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
