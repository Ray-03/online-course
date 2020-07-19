import 'package:flutter/material.dart';
import 'package:kantongilmu/components/library_drawer.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: LibraryDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Library'),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: PinnedLibraryHeader(widget: Row()),
            )
          ],
        ),
      ),
    );
  }
}

class PinnedLibraryHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;
  PinnedLibraryHeader({this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 56.0,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.amber,
        elevation: 5,
        child: Center(
          child: widget,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 56.0;

  @override
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
