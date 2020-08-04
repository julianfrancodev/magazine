import 'package:flutter/material.dart';
import 'package:magazine_app/models/News.dart';
import 'package:magazine_app/screens/ReadNews.dart';
import 'package:magazine_app/widgets/SecondaryCard.dart';

class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recentList.length,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var recent = recentList[index];

        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadNews(news: recent)));
          },
          child: Container(
            width: double.infinity,
            height: 155,
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            child: SecondaryCard(
              news: recent,
            ),
          ),
        );
      },
    );
  }
}
