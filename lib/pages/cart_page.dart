import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kantongilmu/components/cart_data.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Future<bool> _confirmRemoveCourse(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert dialog'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is demo'),
                Text('Would you like blablabla'),
              ],
            ),
          ),
          actions: [
            FlatButton(
              child: Text('Delete'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //check selected items
    bool isAnySelected = coursesInCart.values.any(
      (element) => element.values.any((element) => element),
    );
    bool isAllSelected = coursesInCart.values
        .every((element) => element.values.every((element) => element));
    double totalPrice = 0;
    coursesInCart.values.forEach(
      (element) => element.forEach(
        (key, value) {
          if (value) setState(() => totalPrice += key.coursePrice);
        },
      ),
    );

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
            ///Select all button
            SliverToBoxAdapter(
              child: CheckboxListTile(
                value: isAllSelected,
                onChanged: (isCheck) => coursesInCart.values.forEach(
                  (element) => setState(
                    () => element.updateAll((key, value) => isCheck),
                  ),
                ),
                // kalau ditekan jadi terpilih semunya jika belum semuanya terpilih
                title: Text('Select all item'),
                checkColor: Color(0XFFDA9E5F),
                activeColor: Color(0XFF7D5B3C),
                controlAffinity: ListTileControlAffinity.leading,
                dense: true,
                secondary: FlatButton(
                  child: Text('delete'),
                  onPressed: isAnySelected
                      ? () async {
                          //TODO: Apakah anda yakin untuk menghapus?

                          if (await _confirmRemoveCourse(context)) {
                            coursesInCart.values.forEach(
                              (element) => setState(
                                () =>
                                    element.removeWhere((key, value) => value),
                              ),
                            );
                            setState(
                              () => coursesInCart
                                  .removeWhere((key, value) => value.isEmpty),
                            );
                          }
                        }
                      : null,
                ),
              ),
            ), //Select All
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var item = coursesInCart.entries.elementAt(index);
                  var itemValue = item.value.entries;
                  var itemKey = item.key;
//                  print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');
                  return Card(
                    elevation: 5,
                    color: Colors.brown,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Container(
                      child: Column(
                        children: [
                          ///Trainer name from bought items
                          CheckboxListTile(
                            value:
                                item.value.values.every((element) => element),
                            onChanged: (isCheck) => setState(
                              () =>
                                  item.value.updateAll((key, value) => isCheck),
                            ),
                            title: Text(
                              '${itemKey.trainerName}',
                            ),
                            subtitle: Text(
                                '${itemValue.where((element) => element.value).length}/${itemValue.length}'),
                            controlAffinity: ListTileControlAffinity.leading,
                          ),

                          /// white divider in cart
                          Divider(
                            color: Colors.white,
                            thickness: 2,
                            endIndent: 20,
                            indent: 20,
                          ),

                          ///all items in the carts
                          Column(
                            children: itemValue.map(
                              (element) {
                                return CheckboxListTile(
                                  checkColor: Colors.brown,
                                  activeColor: Colors.yellow,
                                  value: element.value,
                                  onChanged: (isCheck) {
                                    setState(
                                      () => item.value.update(
                                        element.key,
                                        (value) => isCheck,
                                      ),
                                    );
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(
                                          'https://picsum.photos/300/300',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('${element.key.courseTitle}'),
                                          Text(
                                            NumberFormat.currency(
                                              locale: 'id',
                                              symbol: 'IDR ',
                                              decimalDigits: 0,
                                            ).format(element.key.coursePrice),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ).toList(),
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
        isAnySelected
            ? Align(
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
                          Text(
                            NumberFormat.currency(
                              locale: 'id',
                              symbol: 'IDR ',
                              decimalDigits: 0,
                            ).format(totalPrice),
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {
                          print(totalPrice);
                        },
                        child: Text('Check out!'),
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
