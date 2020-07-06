import 'package:flutter/material.dart';
import 'package:kantongilmu/components/profile_tab_data.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            tabs: profileTabs,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                GridView.count(
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
                  }).toList(),
                ),
                Container(
                  height: 100,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text('DAENGWEB.ID'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
