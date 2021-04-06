import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screen/home/components/popular.dart';
import 'package:recipe_app/screen/home/components/recipe.dart';

import 'header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          HeaderLayout(),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 350,
            child: ListView.builder(
              itemCount: listRecipes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => RecipeCard(
                index: index,
                recipe: listRecipes[index],
                press: () {},
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Food',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 190,
            child: ListView.builder(
              itemCount: listRecipes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Popular(
                recipe: listRecipes[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
