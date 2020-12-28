import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';

import 'body_with_searchbox.dart';
import 'featured_plants.dart';
import 'title_with_more_button.dart';
import 'recommended_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenHeightAndWidth = MediaQuery.of(context).size;
    return SingleChildScrollView( // enable scrolling on small devices
      child: Column(
        children: [
          HeaderWithSearchBox(screenHeightAndWidth: screenHeightAndWidth),
          TitleWithMoreButton(title: "Recommended", onPressHandler: (){},),
          RecommendedPlants(),
          TitleWithMoreButton(title: "Featured Plants", onPressHandler: (){},),
          FeaturedPlants(),
          SizedBox(height: pDefaultPadding,)
        ],
      ),
    );
  }
}