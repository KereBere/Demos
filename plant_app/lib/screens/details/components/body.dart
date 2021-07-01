import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

import 'icon_card.dart';
import 'imagand_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith(
                      (states) => RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text("Description"),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
