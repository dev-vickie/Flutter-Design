import 'package:flutter/material.dart';

class BuyWidget extends StatelessWidget {
  const BuyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //price Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Price",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "\$ 300K",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            )
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        // Button
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: const Text(
            "Buy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
