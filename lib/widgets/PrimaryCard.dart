import 'package:flutter/material.dart';
import 'package:magazine_app/contants.dart';
import 'package:magazine_app/models/News.dart';

class PrimaryCard extends StatelessWidget {
  final News news;

  PrimaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kGrey3, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: kGrey1,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                news.category,
                style: kCatergoryTitle,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Hero(
              tag: news.seen,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(news.image), fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            news.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: kTitleCard,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                news.time,
                style: kDetailContent,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: kGrey1,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${news.estimate} min read",
                style: kDetailContent,
              )
            ],
          )
        ],
      ),
    );
  }
}
