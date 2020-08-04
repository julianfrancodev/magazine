import 'package:flutter/material.dart';
import 'package:magazine_app/contants.dart';
import 'package:magazine_app/models/News.dart';
import 'package:magazine_app/screens/ReadNews.dart';
import 'package:magazine_app/widgets/PrimaryCard.dart';
import 'package:magazine_app/widgets/SecondaryCard.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            child: ListView.builder(
              itemCount: popularList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var news = popularList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReadNews(news: news)));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12, left: 12),
                    child: PrimaryCard(
                      news: news,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19),
              child: Text(
                "Basado En Tu Historial",
                style: kCatergoryTitle,
              ),
            ),
          ),
          ListView.builder(
            itemCount: recentList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
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
                  height: 135,
                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: SecondaryCard(
                    news: recent,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
