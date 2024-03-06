import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String houseName;
  final String address;
  final String imagePath;

  const HorizontalListItem({
    super.key,
    required this.houseName,
    required this.address,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //column for name and address
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      houseName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      address,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),

                //like icon
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
