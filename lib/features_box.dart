// import 'dart:js_interop';

import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget{
  final Color color;
  final String header;
  final String description;
  const FeatureBox({super.key, required this.color, required this.header, required this.description});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10,),
     decoration: BoxDecoration(
       color:color,
       borderRadius: const BorderRadius.all(Radius.circular(15),),

     ),
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(
         left: 15,
       ),
       child: Column(
         children: [
           Align(
             alignment: Alignment.centerLeft,
             child: Text(header , style: const TextStyle(
               fontFamily: 'Cera Pro',
               color: Colors.black,
               fontSize: 18,
               fontWeight: FontWeight.bold,
             ),),
           ),
           SizedBox(height: 3,),
           Padding(
             padding: const EdgeInsets.only(right: 20.0),
             child: Text(description , style: const TextStyle(
               fontFamily: 'Cera Pro',
               color: Colors.black,
             ),),
           ),
         ],
       ),
     ),
   );
  }
}