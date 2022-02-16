import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'result_page.dart';
import 'bmi-calculation.dart';

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEA1556);

const numberTextStyle = TextStyle(
    fontSize: 50,fontWeight: FontWeight.w900
);

// it helps us to read code easily
enum Gender{
  male,
  female,
}
class InputApp extends StatefulWidget {
  const InputApp({Key? key}) : super(key: key);

  @override
  _InputAppState createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {

  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  // void checkActivity(Gender gender){
  //   if(gender == Gender.male){//male button is pressed
  //     if(maleCardColor == inActiveCardColor){
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inActiveCardColor;
  //     }else{
  //       maleCardColor = inActiveCardColor;
  //       femaleCardColor = activeCardColor;
  //     }
  //   }else if(gender == Gender.female){ //that means female button is pressed
  //     if(femaleCardColor == inActiveCardColor){
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inActiveCardColor;
  //     }else{
  //       femaleCardColor = inActiveCardColor;
  //       maleCardColor = activeCardColor;
  //     }
  //   }
  // }
  //Gender? selectedGender= null;
  Gender? selectedGender;
  int height = 180;
  int age = 20;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: const Color(0xFF12153B),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //for use full size of widget
          children: [
            Expanded(
                child: Row(
              children:   [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        //checkActivity(Gender.male);
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      //colour: maleCardColour,

                        colour: selectedGender == Gender.male ? activeCardColor : inActiveCardColor,

                      cardChild: ReusableCardChild(iconData: FontAwesomeIcons.mars, textString: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(

                    onTap: (){
                      setState(() {
                        //checkActivity(Gender.female);

                        selectedGender = Gender.female;
                      });
                    },

                    child: ReusableCard(
                      //colour: femaleCardColor,
                      colour: selectedGender == Gender.female ? activeCardColor : inActiveCardColor ,
                      cardChild: ReusableCardChild(iconData: FontAwesomeIcons.venus,textString: "FEMALE",),
                    ),
                  ),

                ),
              ],
            )),
              Expanded(
              child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text("HEIGHT",
                      style: labelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:  [
                          Text(height.toString(),
                            style: numberTextStyle
                          ),
                          const Text("cm",style: labelTextStyle,)
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: const Color(0xFFD0D1D9),
                          overlayColor: const Color(0x1fEB2D67),
                          thumbColor: Colors.pink,
                          thumbShape: const RoundSliderThumbShape(disabledThumbRadius: 14,elevation: 10),
                          //overlayShape: const RoundSliderOverlayShape(overlayRadius: 30)
                        ),
                        child: Slider(
                            value: height.toDouble(), //this height when we open the app this time show
                            min: 80,
                            max: 320,
                            inactiveColor: const Color(0xFF878895),
                          onChanged: (double newValue){
                              setState(() {
                                height = newValue.round();
                              });
                          },
                        ),
                      )
                    ],
                  )
              ),
            ),
            Expanded(
                child: Row(
              children:   [
                Expanded(
                    child: ReusableCard(
                    colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text("WEIGHT",
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            child:  const Icon(FontAwesomeIcons.plus,size: 20,),
                              onPressed: (){
                              setState(() {
                                weight++;
                              });
                          },
                            shape: const CircleBorder(),
                            constraints: const BoxConstraints.tightFor(
                              width: 49,
                              height: 49,
                            ),
                          ),

                          const SizedBox(
                            width: 12,
                          ),

                          RawMaterialButton(
                            child:  const Icon(FontAwesomeIcons.minus,size: 20,),
                              onPressed: (){
                              setState(() {
                                weight--;
                              });
                          },
                            shape: const CircleBorder(),
                            fillColor: const Color(0xFF1C2033),
                            constraints: const BoxConstraints.tightFor(
                              width: 49,
                              height: 49,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                ),
                Expanded(child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("AGE",
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                            RawMaterialButton(
                              child: const Icon(FontAwesomeIcons.plus,size: 20,),
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF1C2033),
                                constraints: const BoxConstraints.tightFor(
                                  width: 49,
                                  height:49
                                ),
                                onPressed: (){
                                setState(() {
                                  age++;
                                });
                            }
                          ),

                          const SizedBox(
                            width: 12,
                          ),

                          RawMaterialButton(
                            child: const Icon(FontAwesomeIcons.minus,size: 20,),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF1C2033),
                              constraints: const BoxConstraints.tightFor(
                                width: 49,
                                height: 49,
                              ),
                              onPressed: (){
                              setState(() {
                                age--;
                              });
                              }
                          )
                        ],
                      ),
                    ],
                  ),
                )
                ),
              ],
            )),
            GestureDetector(
              onTap: (){

                Calculator calculator = Calculator(weight, height);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return ResultPage(
                        bmiResult: calculator.bmiCalculate(),
                        resultText: calculator.getBmiResult(),
                        adviceText: calculator.getAdvice(),
                      );
                    }
                    )
                );
              },
              child: Container(
                width: double.infinity,
                height: bottomContainerHeight,
                color: bottomContainerColor,
                child: const Center(child: Text("CALCULATE YOUR BMI",
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
        ));
  }
}


