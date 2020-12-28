import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(image: "assets/images/bottom_img_1.png", onPressHandler: (){},),
          FeaturedPlantCard(image: "assets/images/bottom_img_2.png", onPressHandler: (){},),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key, this.image, this.onPressHandler,
  }) : super(key: key);

  final String image;
  final Function onPressHandler;

  @override
  Widget build(BuildContext context) {
    Size screenHeightAndWidth = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressHandler,
      child: Container(
        margin: EdgeInsets.only(
            left: pDefaultPadding,
            top: pDefaultPadding / 2,
            bottom: pDefaultPadding / 2
        ),
        width: screenHeightAndWidth.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
          ),
        ),
      ),
    );
  }
}
