import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key, this.title, this.onPressHandler,
  }) : super(key: key);

  final String title;
  final Function onPressHandler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: pPrimaryColor,
            onPressed: onPressHandler,
            child: Text(
              "More",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key, this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: pDefaultPadding /4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(right: pDefaultPadding /4),
              height: 7,
              color: pPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}