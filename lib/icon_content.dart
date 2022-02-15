import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
      fontSize: 20,
      color: Color(0xFF828793)
);

class ReusableCardChild extends StatelessWidget {

  ReusableCardChild({required this.iconData,required this.textString});

  final IconData iconData;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(textString,
          style: labelTextStyle
        )
      ],
    );
  }
}