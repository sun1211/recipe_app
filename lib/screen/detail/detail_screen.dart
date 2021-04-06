import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screen/detail/components/body.dart';

import 'components/app_bar.dart';

class DetailScreen extends StatelessWidget {
  final Recipe recipe;
  const DetailScreen({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: buildAppBar(context),
      body: Body(
        recipe: recipe,
      ),
    );
  }
}
