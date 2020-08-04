import 'package:flutter/material.dart';
import 'package:magazine_app/contants.dart';
import 'package:magazine_app/models/News.dart';
import 'package:magazine_app/widgets/CircleButton.dart';

class ReadNews extends StatefulWidget {
  final News news;

  ReadNews({this.news});

  @override
  _ReadNewsState createState() => _ReadNewsState();
}

class _ReadNewsState extends State<ReadNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18, 15, 18, 0),
              child: Row(
                children: [
                  CircleButton(
                    icon: Icons.arrow_back_ios,
                    onTap: () => Navigator.pop(context),
                  ),
                  Spacer(),
                  CircleButton(
                    icon: Icons.share_outlined,
                    onTap: () {},
                  ),
                  CircleButton(
                    icon: Icons.favorite_border_outlined,
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            Hero(
              tag: widget.news,
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(widget.news.image),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: kGrey3, width: 1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: kGrey3,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        widget.news.category,
                        style: kCatergoryTitle,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Status(
                  iconData: Icons.remove_red_eye,
                  total: widget.news.seen,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              widget.news.title,
              style: kTitleCard.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  widget.news.time,
                  style: kDetailContent,
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 10,
                  child: Divider(
                    color: kBlack,
                    height: 1,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.news.author,
                  style: kDetailContent.copyWith(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.news.content,
              style: descritionStyle,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  final IconData iconData;
  final String total;

  Status({this.iconData, this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          iconData,
          color: kGrey2,
        ),
        SizedBox(width: 4),
        Text(
          total,
          style: kDetailContent,
        )
      ],
    );
  }
}
