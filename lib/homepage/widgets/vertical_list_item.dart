import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  final String houseName;
  final String address;
  final String imagePath;
  const VerticalListItem({
    super.key,
    required this.houseName,
    required this.address,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                houseName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                address,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
