import 'package:flutter/material.dart';
import './horizontal_news_item.dart';

class HorizontalNewsList extends StatefulWidget {
  const HorizontalNewsList({Key? key}) : super(key: key);

  @override
  State<HorizontalNewsList> createState() => _HorizontalNewsListState();
}

class _HorizontalNewsListState extends State<HorizontalNewsList> {
  @override
  Widget build(BuildContext context) {
    // To do fetch the news from the API and pass it to item widget
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: const <Widget>[
        HorizontalNewsItem(
          newsImageUrl:
              "https://scx2.b-cdn.net/gfx/news/2022/nasa-gives-green-light.jpg",
          newsTitle:
              "NACI to release new guidance on coronavirus boosters today - CP24 Toronto’s Breaking News",
          newsPublisher: "CP24 Toronto’s Breaking News",
          publishedTime: "4 hours ago",
        )
      ],
    );
  }
}
