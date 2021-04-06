import 'package:flutter/material.dart';
import 'package:recipe_app/screen/home/components/body.dart';

import 'components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
