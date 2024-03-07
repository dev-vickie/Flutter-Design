import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/house1.jpg'))),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}
