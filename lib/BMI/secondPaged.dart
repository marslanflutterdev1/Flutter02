// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:journey_flutter/BMI/constants.dart';
import 'package:journey_flutter/BMI/homePaged.dart';
import 'package:journey_flutter/BMI/reusedContainer.dart';

class SecondPaged extends StatelessWidget {
  const SecondPaged(
      {super.key,
      required this.calBMI,
      required this.rangebmi,
      required this.expbmi,
      required this.aged});
  final String calBMI;
  final String rangebmi;
  final String expbmi;
  final String aged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 45.0),
                child: Center(
                  child: Text(
                    'The Result Body Mass Index',
                    style: kLabalStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: reusedContainer(
                  customWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                          child: Column(
                        children: [
                          Text(
                            rangebmi,
                            style: const TextStyle(
                                color: Colors.green, fontSize: 25),
                          ),
                          Text(
                            'Yours age is : $aged',
                            style: const TextStyle(
                                color: Colors.green, fontSize: 25),
                          ),
                        ],
                      )),
                      Center(
                          child: Text(
                        calBMI,
                        style: kNumberStyle,
                      )),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          expbmi,
                          style: kLabalStyle,
                        ),
                      ))
                    ],
                  ),
                  colored: const Color(0xff1D1E33)),
            ),
            Expanded(
              flex: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePaged()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(color: thumbColored),
                  child: const Center(
                    child: Text(
                      'Click To Go Back',
                      style: kLabalStyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
