import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_plant_app/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.screenHeightAndWidth,
  }) : super(key: key);

  final Size screenHeightAndWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: pDefaultPadding * 2.5),
      height: screenHeightAndWidth.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: pDefaultPadding,
              right: pDefaultPadding,
              bottom: 36 + pDefaultPadding,
            ),
            height: screenHeightAndWidth.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: pPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hey Plant App!",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: pDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: pDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: pPrimaryColor.withOpacity(0.23),
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: pPrimaryColor.withOpacity(0.5),
                            fontWeight: FontWeight.w300,
                          ) ,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffixIcon: SvgPicture.asset("assets/icons/search.svg"), // not working for svg image
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg")
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}