import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //container
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text("Search Through"),
                Icon(
                  Icons.mic,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
        //icon
        Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(8),
          child: const Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
