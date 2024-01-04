import 'package:flutter/material.dart';
// import 'package:journey_flutter/BMI/homePaged.dart';
import 'package:journey_flutter/Calculator/calculatorUI.dart';
import 'package:journey_flutter/Calculator/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,

      // this theme is used for BMI calculator.
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: const Color(0xff0A0E21),
      //   scaffoldBackgroundColor: const Color(0xff0A0E21),
      // ),
    //  home: const HomePaged(),

    // Calculator ui theme data as.
    theme: ThemeData(
    scaffoldBackgroundColor:bg,
    colorScheme:  ColorScheme.light(
      background:bg,
   
      
    ),
    hintColor: Colors.grey.shade400

    ),
    
    home: CalculatorUI(),
    );
  }
}
