import 'dart:math';
class Calculator{
  double bmi=0;
  final int weight;
  final int height;
  Calculator(this.weight,this.height);

  String bmiCalculate(){
    bmi = (weight/pow(height/100, 2)); //BMI={weight(kg)/{height(m)}^2}
    return bmi.toStringAsFixed(2);
  }

  String getBmiResult(){
    if(bmi >=25){
      return "Overweight";
    }
    else if(bmi >18.5){
      return "Normal";
    }
    else{
      return "Underweight";
    }
  }
  String getAdvice(){
    if(bmi >=25){
      return "You have a higher than normal body weight.Try to exercise more..";
    }
    else if(bmi >18.5){
      return "You have a normal body. good job!!";
    }
    else{
      return "You have a lower than normal body weight. You can eat a bit more";
    }
  }
}