import 'package:flutter/material.dart';

//for simplify we create another class
class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colour,required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild, //it used for set image inside the container
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(13)),
    );
  }
}