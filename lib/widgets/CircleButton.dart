import 'package:flutter/material.dart';
import 'package:magazine_app/contants.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  CircleButton({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(
            icon,
            color: kGrey2,
            size: 15,
          ),
        ),
      ),
    );
  }
}
