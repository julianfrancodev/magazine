import 'package:flutter/material.dart';
import 'package:magazine_app/contants.dart';
import 'package:magazine_app/screens/Popular.dart';
import 'package:magazine_app/screens/Recent.dart';
import 'package:magazine_app/screens/Trending.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Welcome",
                  textAlign: TextAlign.end,
                  style: kNonActiveTabStyle,
                ),
                subtitle: Text(
                  "Maria Camila",
                  textAlign: TextAlign.end,
                  style: kActiveTabSyle,
                ),
                trailing: Container(
                  width: 50,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/ve.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabSyle.copyWith(fontSize: 25),
                  tabs: [
                    Tab(text: "Popular",),
                    Tab(text: "Trending",),
                    Tab(text: "Recent",),

                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Popular(),
            Trending(),
            Recent(),

          ],
        ),
      ),
    );
  }
}
