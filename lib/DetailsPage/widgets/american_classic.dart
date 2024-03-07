import 'package:flutter/material.dart';

class AmericanClassicRow extends StatelessWidget {
  final String houseName;
  final String houseDistrict;
  const AmericanClassicRow({
    super.key,
    required this.houseDistrict,
    required this.houseName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //American classic column
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              houseName,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            //Highway District row
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.orange,
                ),
                Text(
                  houseDistrict,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        //Favorite container
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
