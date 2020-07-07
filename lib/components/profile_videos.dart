import 'package:flutter/material.dart';

class ProfileVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///return grid of videos thumbnails
    return GridView.count(
      physics: ScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: <String>[
        'https://picsum.photos/200/300/?blur=1',
        'https://picsum.photos/200/300/?blur=2',
        'https://picsum.photos/200/300/?blur=3',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/200/300/?blur=1',
        'https://picsum.photos/200/300/?blur=2',
        'https://picsum.photos/200/300/?blur=3',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/200/300/?blur=1',
        'https://picsum.photos/200/300/?blur=2',
        'https://picsum.photos/200/300/?blur=3',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/500',
      ].map((String url) {
        return GestureDetector(
          onTap: () {
            debugPrint('test');
          },
          child: GridTile(
            child: Hero(
              tag: url,
              child: Image.network(url, fit: BoxFit.cover),
            ),
          ),
        );
      }).toList(), //TODO: fetch from Firebase
    );
  }
}
