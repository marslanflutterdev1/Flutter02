// ignore_for_file: camel_case_types, file_names, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:journey_flutter/Calculator/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  String result = '000';

  textCount(String title) {
    setState(() {
      result = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                result.toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: onPContainerText,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                          textLabal: 'AC',
                          c: onContainer,
                          widthed: 170,
                          textColor: onPrimaryContainer,
                          click: () {}),
                      customButton(
                        textLabal: '%',
                        c: onContainer,
                        textColor: onPrimaryContainer,
                      ),
                      customButton(
                        textLabal: '/',
                        c: onContainer,
                        borderColor: onPrimaryContainer,
                        textColor: onPrimaryContainer,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                        textLabal: '9',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '8',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '7',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: 'x',
                        c: onContainer,
                        borderColor: onPrimaryContainer,
                        textColor: onPrimaryContainer,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                        textLabal: '6',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '5',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '4',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '-',
                        c: onContainer,
                        borderColor: onPrimaryContainer,
                        textColor: onPrimaryContainer,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                        textLabal: '3',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '2',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '1',
                        c: onContainer,
                      ),
                      customButton(
                        textLabal: '+',
                        c: onContainer,
                        borderWidth: 2,
                        borderColor: onPrimaryContainer,
                        textColor: onPrimaryContainer,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                        textLabal: '0',
                        c: onContainer,
                        widthed: 170,
                        textColor: onPrimaryContainer,
                      ),
                      customButton(
                        textLabal: '.',
                        c: onContainer,
                        textColor: onPrimaryContainer,
                      ),
                      customButton(
                        textLabal: '=',
                        c: onPrimaryContainer,
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}

class customButton extends StatelessWidget {
  customButton(
      {super.key,
      required this.textLabal,
      required this.c,
      this.widthed = 72,
      this.heighted = 66,
      this.borderWidth = 1.0,
      this.borderColor = Colors.transparent,
      this.textColor = Colors.white,
      this.click});
  final VoidCallback? click;
  String textLabal;
  Color c;
  double widthed;
  double heighted;
  double borderWidth;
  Color borderColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: widthed,
        height: heighted,
        decoration: BoxDecoration(
            color: c,
            border: Border.all(width: borderWidth, color: borderColor),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(4, 4),
                  spreadRadius: 1.0,
                  blurRadius: 4),
              BoxShadow(
                color: Colors.black,
                // offset: const Offset(-1, -1),
                // spreadRadius: 1.0,
              ),
            ]),
        child: Center(
          child: Text(
            textLabal,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
