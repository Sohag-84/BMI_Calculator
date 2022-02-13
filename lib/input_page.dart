import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          style: const TextStyle(
          fontSize: 20,
          color: Color(0xFF828793)
        ),)
      ],
    );
  }
}

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
//color: const Color(0xFF1D1E33),