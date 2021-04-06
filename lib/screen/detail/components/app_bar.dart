import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    brightness: Brightness.light,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: Icon(
          Icons.favorite_border,
          color: Colors.black,
        ),
      ),
    ],
  );
}
