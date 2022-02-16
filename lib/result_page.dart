import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({Key? key}) : super(key: key);

  ResultPage({required this.bmiResult,required this.resultText,required this.adviceText});

  final String bmiResult;
  final String resultText;
  final String adviceText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch, //for full screen space
        children: [
          Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.bottomCenter,
                child: const Text("Your Result",
                  style: TextStyle(
                    fontSize: 50,fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              )
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876)
                      ),
                    ),
                    Text(bmiResult,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80
                      ),
                    ),
                    Text(adviceText,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              )
          ),
          GestureDetector(
            onTap: (){
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context){
              //       return const InputApp();
              //     }
              //     )
              // );
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: bottomContainerHeight,
              color: bottomContainerColor,
              child: const Center(child: Text("RE-CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
              )
              ),
            ),
          )
        ],
      )
    );
  }
}
