import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //menu icon
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(Icons.menu),
        ),

        //row of icon + city name
        const Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.orange,
            ),
            Text(
              "California,",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text("US"),
          ],
        ),

        //notifications icon
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(Icons.notifications),
        )
      ],
    );
  }
}
