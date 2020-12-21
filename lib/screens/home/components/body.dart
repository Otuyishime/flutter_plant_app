import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_with_searchbox.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenHeightAndWidth = MediaQuery.of(context).size;
    return SingleChildScrollView( // enable scrolling on small devices
      child: Column(
        children: [
          HeaderWithSearchBox(screenHeightAndWidth: screenHeightAndWidth),
          TitleWithMoreButton(title: "Recommended", onPressHandler: (){},),
        ],
      ),
    );
  }
}
