import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  final String imagePath2;
  const HorizontalList({
    super.key,
    required this.imagePath2,
  });

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
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                widget.imagePath2,
              ))),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}
