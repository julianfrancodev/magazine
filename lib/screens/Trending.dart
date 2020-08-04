import 'package:flutter/material.dart';
import 'package:magazine_app/models/News.dart';
import 'package:magazine_app/screens/ReadNews.dart';
import 'package:magazine_app/widgets/PrimaryCard.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trendingList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var trending = trendingList[index];

        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadNews(news: trending)));
          },
          child: Container(
            width: double.infinity,
            height: 300,
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: PrimaryCard(
              news: trending,
            ),
          ),
        );
      },
    );
  }
}
