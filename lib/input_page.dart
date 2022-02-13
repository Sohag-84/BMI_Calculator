import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const cardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEA1556);

class InputApp extends StatefulWidget {
  const InputApp({Key? key}) : super(key: key);

  @override
  _InputAppState createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: const Color(0xFF12153B),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children:   [
                Expanded(
                  child: ReusableCard(
                      colour: cardColor,
                    cardChild: ReusableCardChild(iconData: FontAwesomeIcons.mars, textString: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableCardChild(iconData: FontAwesomeIcons.venus,textString: "FEMALE",),
                  ),

                ),
              ],
            )),
              Expanded(
              child: ReusableCard(
                  colour: cardColor,
                cardChild: Column(
                  children: const[
                    Icon(
                      FontAwesomeIcons.female,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children:   [
                Expanded(child: ReusableCard(
                    colour: cardColor,
                  cardChild: Column(
                    children: const[
                      Icon(
                        FontAwesomeIcons.female,
                        size: 20,
                      )
                    ],
                  ),
                )
                ),
                Expanded(child: ReusableCard(
                    colour: cardColor,
                  cardChild: Column(
                    children: const[
                      Icon(
                        FontAwesomeIcons.female,
                        size: 20,
                      )
                    ],
                  ),
                )
                ),
              ],
            )),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              color: bottomContainerColor,
              child: const Center(child: Text("CALCULATE YOUR BMI",
                style: TextStyle(
                    color: Colors.white,
                  letterSpacing: 2
                ),
              )
              ),
            )
          ],
        ));
  }
}


