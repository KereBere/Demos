import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_bbtn.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //It will provide us total height and with of our screen 1200*1600
    Size size = MediaQuery.of(context).size;
    //it enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          //It Will cover 40% of our screen
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
