import 'package:flutter/material.dart';
import 'package:magazine_app/contants.dart';
import 'package:magazine_app/models/News.dart';

class SecondaryCard extends StatelessWidget {
  final News news;

  SecondaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kGrey3, width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: NetworkImage(news.image), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kTitleCard,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    news.subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kDetailContent,
                  ),
                  Spacer(),
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
            ),
          )
        ],
      ),
    );
  }
}
