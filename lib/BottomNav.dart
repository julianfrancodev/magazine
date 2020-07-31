import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magazine_app/screens/Account.dart';
import 'package:magazine_app/screens/Favorite.dart';
import 'package:magazine_app/screens/Home.dart';
import 'package:magazine_app/screens/Search.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    List<Widget> _bottomNavView = [Home(), Search(), Favorite(), Account()];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home.svg",width: 24,),
              activeIcon: SvgPicture.asset("assets/home_2.svg", width: 24,),
              title: Text("Home")
            ),

          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/search.svg",width: 24,),
              activeIcon: SvgPicture.asset("assets/search_2.svg",width: 24,),
              title: Text("Search")
          ),

          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/favorite.svg",width: 24,),
              activeIcon: SvgPicture.asset("assets/favorite_2.svg",width: 24,),
              title: Text("Favorite")
          ),

          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/account.svg",width: 24,),
              activeIcon: SvgPicture.asset("assets/account_2.svg",width: 24,),
              title: Text("Account")
          ),
        ]
      ),
    );
  }
}

