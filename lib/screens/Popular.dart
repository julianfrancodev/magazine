import 'package:flutter/material.dart';
import 'package:magazine_app/models/News.dart';
import 'package:magazine_app/widgets/PrimaryCard.dart';

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
                itemBuilder: (context, index){
                  var news = popularList[index];
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 12,left: 12),
                      child: PrimaryCard(news: news,),
                    ),
                  );
                },
              ),
            )
          ],
        ),
    );
  }
}
