// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_layout/widgets/custom_appbar.dart';
import 'package:design_layout/widgets/search.dart';
import 'package:design_layout/widgets/vertical_list_item.dart';
import 'package:flutter/material.dart';

import 'widgets/horizontal_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              //custom app bar
              CustomAppBar(),
              SizedBox(height: 20),
              //search bar + button
              SearchArea(),
              SizedBox(
                height: 20,
              ),

              //horizontal list
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HorizontalListItem(
                      houseName: "American District",
                      address: "Highway 101",
                      imagePath: "assets/images/house1.jpg",
                    ),
                    HorizontalListItem(
                      houseName: "African House",
                      address: "Highway 102",
                      imagePath: "assets/images/house2.jpg",
                    ),
                    HorizontalListItem(
                      houseName: "Latin American House",
                      address: "Highway 103",
                      imagePath: "assets/images/house3.jpg",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //popular heading
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "show more",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              //vertical list
              Expanded(
                child: ListView(
                  children: [
                    VerticalListItem(
                      houseName: "Minimalistic House",
                      address: "Houseway 101",
                      imagePath: "assets/images/house1.jpg",
                    ),
                    VerticalListItem(
                      houseName: "Futuristic House",
                      address: "Houseway 102",
                      imagePath: "assets/images/house2.jpg",
                    ),
                    VerticalListItem(
                      houseName: "Evolving House Design",
                      address: "Houseway 103",
                      imagePath: "assets/images/house3.jpg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
