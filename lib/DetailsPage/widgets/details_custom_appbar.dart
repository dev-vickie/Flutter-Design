import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsCustomAppbar extends StatelessWidget {
  const DetailsCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Back icon
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                    padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new_outlined,size: 18,),
                    ),
                  ),
                  //Details Text
                  const Text(
                    "Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  //loading conatiner
                  Container(
                    padding:const  EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.more_horiz, size: 18,),
                  ),
                ],
              );
              
  }
}