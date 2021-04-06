import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'option.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'Springy Salads',
              style: GoogleFonts.breeSerif(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'Healthy and nutritious food recipes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Option(
                index: 0,
                text: 'Vegetable',
                image: 'assets/icons/salad.png',
              ),
              SizedBox(
                width: 8,
              ),
              Option(
                index: 1,
                text: 'Rice',
                image: 'assets/icons/rice.png',
              ),
              SizedBox(
                width: 8,
              ),
              Option(
                index: 2,
                text: 'Fruit',
                image: 'assets/icons/fruit.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}
