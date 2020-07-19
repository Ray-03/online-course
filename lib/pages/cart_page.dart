import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/models/course.dart';
import 'package:kantongilmu/models/trainer.dart';

class CartPage extends StatelessWidget {
//  final ScrollController _scrollController = ScrollController();
  /// note: data must be sorted by trainer id
//  final List<Course> dummyCoursesInCart = [
//    Course(
//      courseID: 'CO004',
//      courseTitle: 'Develop Aplikasi dengan Assembly bagian 2',
//      trainer: Trainer(
//        trainerName: 'Ayam Goyeng',
//        trainerID: 'TR002',
//      ),
//    ),
//    Course(
//      courseID: 'CO001',
//      courseTitle: 'Tutorial Bernafas part 1',
//      trainer: Trainer(trainerName: 'Buwung Puyuh', trainerID: 'TR001'),
//    ),
//    Course(
//      courseID: 'CO002',
//      courseTitle: 'Tutorial Bernafas part 2',
//      trainer: Trainer(trainerName: 'Buwung Puyuh', trainerID: 'TR001'),
//    ),
//    Course(
//      courseID: 'CO003',
//      courseTitle: 'Develop Aplikasi dengan Assembly',
//      trainer: Trainer(
//        trainerName: 'Ayam Goyeng',
//        trainerID: 'TR002',
//      ),
//    ),
//  ];

  final Map<Trainer, List<Course>> dummyData = {
    Trainer(trainerID: 'TR001', trainerName: 'Buwung Puyuh'): [
      Course(
        courseID: 'CO001',
        courseTitle: 'Tutorial Bernapas Part 1',
        coursePrice: 10000,
      ),
      Course(
        courseID: 'CO002',
        courseTitle: 'Tutorial Bernapas Part 2',
        coursePrice: 10000,
      )
    ],
    Trainer(trainerID: 'TR002', trainerName: 'Ayam Goyeng'): [
      Course(
        courseID: 'CO003',
        courseTitle: 'Cara menabung dosa',
        coursePrice: 0,
      ),
    ],
    Trainer(trainerID: 'TR003', trainerName: 'Ayam Bakar'): [
      Course(
          courseID: 'CO004',
          courseTitle: 'Cara menabung dosa',
          coursePrice: 2000),
    ],
    Trainer(trainerID: 'TR004', trainerName: 'Buwung Bakar'): [
      Course(
          courseID: 'CO005',
          courseTitle: 'Cara menabung dosa',
          coursePrice: 200000),
      Course(
          courseID: 'CO006',
          courseTitle: 'Cara menabung dosa 3',
          coursePrice: 2000000),
    ],
    Trainer(trainerID: 'TR005', trainerName: 'Kera Sakti'): [
      Course(
          courseID: 'CO007',
          courseTitle: 'Cara menabung dosa',
          coursePrice: 2000000),
    ],
  };

  @override
  Widget build(BuildContext context) {
//    dummyData.forEach((key, value) {
//      print(
//          '${key.trainerID}, ${key.trainerName}: [ ${value.toList().}]');
//    );
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Total Price'),
                Text('Rp. 999.999'),
              ],
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Check out!'),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            forceElevated: true,
            floating: true,
            pinned: true,
            title: Text('CART'),
            actions: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.red,
                ),
                onPressed: () {},
                tooltip: 'Go to wishlist',
              )
            ],

            /// harusnya bisa pakai kode ini agar checkbox ada di dalam sliverappbar. tapi ketika list discroll, checkbox tidak ikut hidden
//          flexibleSpace: Padding(
//            padding: EdgeInsets.only(top: kToolbarHeight),
//            child: CheckboxListTile(
//              value: true,
//              onChanged: (val) {},
//              title: Text('Select all item'),
//              checkColor: Color(0XFFDA9E5F),
//              activeColor: Color(0XFF7D5B3C),
//              controlAffinity: ListTileControlAffinity.leading,
//              dense: true,
//            ),
//            child: Checkbox(value: false, onChanged: (vel) {}),
//          ),
//          excludeHeaderSemantics: true,
//          expandedHeight: 2 * kToolbarHeight,
          ),
          SliverToBoxAdapter(
            child: CheckboxListTile(
              value: true,
              onChanged: (val) {},
              title: Text('Select all item'),
              checkColor: Color(0XFFDA9E5F),
              activeColor: Color(0XFF7D5B3C),
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  elevation: 5,
                  color: Colors.pink,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    child: Column(
                      children: [
                        ///Trainer name from bought items
                        CheckboxListTile(
                          value: false,
                          onChanged: (val) {},
                          title: Text('Nama yang buat'),
                          controlAffinity: ListTileControlAffinity.leading,
                          subtitle: Text(
                              '0/${dummyData.values.elementAt(index).length}'),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                          endIndent: 20,
                          indent: 20,
                        ),

                        ///all items in the carts

                        ////////////////////////////////////////////////

                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: false,
                          onChanged: (val) {},
                          title: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nama pengajar'),
                                  Text('Harga')
                                ],
                              )
                            ],
                          ),
                        ),

//                        ListView.builder(itemBuilder: (BuildContext context, int index){}, itemCount: ,)
                      ],
                    ),
//                    color: Colors.red,
                  ),
                );
              },
              childCount: dummyData.length,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
