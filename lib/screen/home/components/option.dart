import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class Option extends StatefulWidget {
  final Function press;
  final String text;
  final String image;
  final int index;
  Option({Key key, this.press, this.text, this.image, this.index})
      : super(key: key);

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  List<bool> optionSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          optionSelected[widget.index] = !optionSelected[widget.index];
        });
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: optionSelected[widget.index] ? kPrimaryColor : Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadow],
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            SizedBox(
              height: 32,
              width: 32,
              child: Image.asset(
                widget.image,
                color:
                    optionSelected[widget.index] ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color:
                    optionSelected[widget.index] ? Colors.white : Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
