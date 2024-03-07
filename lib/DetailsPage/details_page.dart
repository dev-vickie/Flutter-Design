import 'package:design_layout/DetailsPage/widgets/HorizontalList.dart';
import 'package:design_layout/DetailsPage/widgets/american_classic.dart';
import 'package:design_layout/DetailsPage/widgets/buy.dart';
import 'package:design_layout/DetailsPage/widgets/details_custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatelessWidget {
  final String imagepath1;
  final String houseName;
  final String houseDistrict;
  const DetailsPage({
    super.key,
    required this.imagepath1,
    required this.houseName,
    required this.houseDistrict,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                //custom Details appbar
                const DetailsCustomAppbar(),
                const SizedBox(
                  height: 20,
                ),
                //house container
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(imagepath1))),
                ),
                const SizedBox(
                  height: 20,
                ),
                //American classic Row
                AmericanClassicRow(
                  houseDistrict: houseDistrict,
                  houseName: houseName,
                ),
                const SizedBox(
                  height: 10,
                ),
                //house description
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text:
                        "American Classic House , this house has always been a target for property companies because of its ancient style but very attractive ",
                  ),
                  TextSpan(
                      text: "Read More,",
                      style: TextStyle(color: Colors.orange))
                ])),

                const SizedBox(
                  height: 15,
                ),
                //overview title
                const Text(
                  "Overview",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                //horizontal listview

                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                      HorizontalList(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //price row
                const BuyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
