import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kantongilmu/components/library_dropdown_data.dart';

import 'library_search_article_page.dart';
import 'library_search_course_page.dart';
import 'library_search_video_page.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

///SliverOverlapAbsorber/SliverOverlapInjector
class _LibraryPageState extends State<LibraryPage> {
  String chosenDropdownValue = libraryDropdownItems.first;
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        dropdownColor: Colors.green,
                        value: chosenDropdownValue,
                        icon: Transform.rotate(
                          angle: 90 / 180 * pi,
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        elevation: 16,
                        underline: SizedBox(),
                        onChanged: (String newValue) => setState(
                          () => chosenDropdownValue = newValue,
                        ),
                        items: libraryDropdownItems
                            .map<DropdownMenuItem<String>>(
                              (String item) => DropdownMenuItem(
                                child: Text(item),
                                value: item,
                              ),
                            )
                            .toList(),
                      ),
                      color: Colors.red,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.history),
                    onPressed: () => null,
                  ),
                  IconButton(
                    icon: Icon(Icons.format_color_text),
                    onPressed: () => null,
                  ),
                ],
              ),
            ), //dropdown, recent, A
          ),
        ];
      },
      body: libraryDropdownNavigation.elementAt(
        libraryDropdownItems.indexOf(chosenDropdownValue),
      ),
    );
  }
}

//for custom dropdown:
//https://github.com/shubham030/simple_account_menu/blob/master/lib/simple_account_menu.dart

//class LibrarySearchBar extends StatelessWidget {
//  Future<List<Article>> searchArticle(String keyword) async {
//    await Future.delayed(Duration(seconds: 2));
//    if (keyword == 'dummyEmpty')
//      return []; // ini hanya untuk percobaan jika keyword tidak ditemukan
//    if (keyword == 'error') throw Error();
//    return List.generate(
//      keyword.length,
//      (int index) => Article(
//        title: '$keyword $index',
//        description: '$keyword $index',
//        trainer: Trainer(trainerName: 'Agus', trainerID: 'TR001'),
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return SearchBar<Article>(
//        searchBarPadding: EdgeInsets.all(8),
//        hintText: 'Masukkan keyword anda di sini',
//        loader: Text('ditunggu bang...'),
//        placeHolder: Text('silakeun dicari'),
//        onError: (error) => Text('Error occured: $error'),
//        emptyWidget: Text('Gaada apa apa bang!'),
//        searchBarStyle: SearchBarStyle(
//          backgroundColor: Colors.amber,
//          borderRadius: BorderRadius.circular(4),
//          padding: EdgeInsets.all(10),
//        ),
//        debounceDuration: Duration(milliseconds: 800),
//        cancellationWidget: Icon(Icons.close),
//        minimumChars: 5,
//        onSearch: searchArticle,
//        onItemFound: (Article article, int index) {
//          return ListTile(
//            title: Text(article.title),
//            subtitle: Text(article.description),
//          );
//        });
//  }
//}

enum LibraryDropdownIndex {
  article,
  video,
  course,
}

final libraryDropdownPages = [
  LibraryArticlePage(),
  LibrarySearchVideoPage(),
  LibrarySearchCoursePage(),
];
