import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    brightness: Brightness.light,
    elevation: 0,
    leading: Icon(
      Icons.sort,
      color: Colors.black,
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    ],
  );
}
