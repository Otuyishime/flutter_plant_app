import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressHandler: () {},
          ),
          RecommendedPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            onPressHandler: () {},
          ),
          RecommendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressHandler: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key, this.image, this.title, this.country, this.price, this.onPressHandler
  }) : super(key: key);

  final String image, title,country;
  final int price;
  final Function onPressHandler;

  @override
  Widget build(BuildContext context) {
    Size screenHeightAndWidth = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
            left: pDefaultPadding,
            top: pDefaultPadding / 2,
            bottom: pDefaultPadding * 2.5
        ),
        width: screenHeightAndWidth.width * 0.4,
        child: Column (
          children: [
            Image.asset(image),
            GestureDetector(
              onTap: onPressHandler,
              child: Container(
                padding: EdgeInsets.all(pDefaultPadding / 2),
                decoration: BoxDecoration (
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow (
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: pPrimaryColor.withOpacity(0.23)
                      )
                    ]
                ),
                child: Row(
                  children: [
                    RichText (
                        text: TextSpan (
                            children: [
                              TextSpan(
                                  text: "$title".toUpperCase(),
                                  style: Theme.of(context).textTheme.button
                              ),
                              TextSpan(text: "\n"),
                              TextSpan(
                                  text: "$country".toUpperCase(),
                                  style: TextStyle(color: pPrimaryColor.withOpacity(0.5))
                              )
                            ]
                        )
                    ),
                    Spacer(),
                    Text(
                        "\$$price",
                        style: Theme.of(context).textTheme.button.copyWith(color: pPrimaryColor)
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}