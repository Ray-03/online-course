import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/models/course.dart';
import 'package:kantongilmu/models/trainer.dart';

class CartPage extends StatelessWidget {
  final Map<Trainer, List<Course>> coursesInCart = {
    Trainer(trainerID: 'TR001', trainerName: 'Trainer A'): [
      Course(
        courseID: 'CO001',
        courseTitle: 'A1',
        coursePrice: 10000,
      ),
      Course(
        courseID: 'CO002',
        courseTitle: 'A2',
        coursePrice: 20000,
      ),
      Course(
        courseID: 'CO007',
        courseTitle: 'A3',
        coursePrice: 20000,
      ),
      Course(
        courseID: 'CO008',
        courseTitle: 'A4',
        coursePrice: 20000,
      ),
    ],
    Trainer(trainerID: 'TR002', trainerName: 'B'): [
      Course(
        courseID: 'CO003',
        courseTitle: 'B1',
        coursePrice: 30000,
      ),
      Course(
        courseID: 'CO009',
        courseTitle: 'B2',
        coursePrice: 40000,
      ),
    ],
    Trainer(trainerID: 'TR003', trainerName: 'C'): [
      Course(
        courseID: 'CO004',
        courseTitle: 'C1',
        coursePrice: 4000,
      ),
    ],
    Trainer(trainerID: 'TR004', trainerName: 'D'): [
      Course(
        courseID: 'CO005',
        courseTitle: 'D1',
        coursePrice: 500000,
      ),
      Course(
        courseID: 'CO006',
        courseTitle: 'D2',
        coursePrice: 6000000,
      ),
    ],
    Trainer(trainerID: 'TR005', trainerName: 'E'): [
      Course(
        courseID: 'CO007',
        courseTitle: 'E1',
        coursePrice: 7000000,
      ),
    ],
  };

//  void checkBoxToggle(){
//
//  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
//          SliverAppBar(
//            snap: true,
//            forceElevated: true,
//            floating: true,
//            pinned: true,
//            title: Text('CART'),
//            actions: [
//              IconButton(
//                icon: Icon(
//                  FontAwesomeIcons.solidHeart,
//                  color: Colors.red,
//                ),
//                onPressed: () {},
//                tooltip: 'Go to wishlist',
//              )
//            ],
//
//            /// harusnya bisa pakai kode ini agar checkbox ada di dalam sliverappbar. tapi ketika list discroll, checkbox tidak ikut hidden
////          flexibleSpace: Padding(
////            padding: EdgeInsets.only(top: kToolbarHeight),
////            child: CheckboxListTile(
////              value: true,
////              onChanged: (val) {},
////              title: Text('Select all item'),
////              checkColor: Color(0XFFDA9E5F),
////              activeColor: Color(0XFF7D5B3C),
////              controlAffinity: ListTileControlAffinity.leading,
////              dense: true,
////            ),
////            child: Checkbox(value: false, onChanged: (vel) {}),
////          ),
////          excludeHeaderSemantics: true,
////          expandedHeight: 2 * kToolbarHeight,
//          ),
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
            ), //Select All
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  List<CheckboxListTile> courseBodyData = [];
                  coursesInCart.values.elementAt(index).forEach((element) {
                    courseBodyData.add(
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: false,
                        onChanged: (val) {},
                        title: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.network(
                                  'https://picsum.photos/300/300'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${element.courseTitle}'),
                                Text('Rp.${element.coursePrice}'),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  });
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
                            title: Text(
                              '${coursesInCart.keys.elementAt(index).trainerName}',
                            ),
                            subtitle: Text(
                              '0/${coursesInCart.values.elementAt(index).length}',
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2,
                            endIndent: 20,
                            indent: 20,
                          ),

                          ///all items in the carts

                          ////////////////////////////////////////////////
                          Column(
                            children: courseBodyData,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: coursesInCart.length,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 80,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
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
        ),
      ],
    );
  }
}
