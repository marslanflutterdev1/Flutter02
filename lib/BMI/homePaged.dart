// ignore_for_file: camel_case_types, use_key_in_widget_constructors, must_be_immutable, unused_element, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:journey_flutter/BMI/constants.dart';
import 'package:journey_flutter/BMI/formula.dart';
import 'package:journey_flutter/BMI/secondPaged.dart';

import 'buttonIncDec.dart';
import 'reusedContainer.dart';
import 'reusedPersonContainer.dart';

enum Gander {
  male,
  female,
}

class HomePaged extends StatefulWidget {
  const HomePaged({super.key});

  get ageValue => null;

  @override
  State<HomePaged> createState() => _HomePagedState();
}

class _HomePagedState extends State<HomePaged> {
  Gander? setColorPerson;
  double startValueSlider = 45.0;
  int weightValue = 1;
  static int ageValue = 1;

  // This one used for  set colors of gender
  // Color maleColor = deactiveColor;
  // Color femaleColor = deactiveColor;
  //
  // void setColorForPorsonContainer(int gender) {
  //   if (gender == 1) {
  //     maleColor = activeColor;
  //     femaleColor = deactiveColor;
  //   }
  //   if (gender == 2) {
  //     femaleColor = activeColor;
  //     maleColor = deactiveColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  // flex: 1,
                  child: Row(
                children: [
                  Expanded(
                    child: reusedContainer(
                      onPres: () {
                        setState(() {
                          setColorPerson = Gander.male;
                        });
                      },
                      colored: setColorPerson == Gander.male
                          ? activeColor
                          : deactiveColor,
                      customWidget: const reusedPersonContainer(
                        icon: FontAwesomeIcons.person,
                        labal: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: reusedContainer(
                      onPres: () {
                        setState(() {
                          setColorPerson = Gander.female;
                        });
                      },
                      colored: setColorPerson == Gander.female
                          ? activeColor
                          : deactiveColor,
                      customWidget: const reusedPersonContainer(
                          icon: FontAwesomeIcons.personDress, labal: 'Female'),
                    ),
                  ),
                ],
              )),
              Expanded(
                  // flex: 1,
                  child: reusedContainer(
                colored: const Color(0xff1D1E33),
                customWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Height',
                      style: kLabalStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(startValueSlider.toStringAsFixed(1),
                              style: kNumberStyle),
                        ),
                        const Text(
                          ' cm',
                          style: kLabalStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: startValueSlider,
                      min: 45.0,
                      max: 304.0,
                      activeColor: const Color(0xff0A0E21),
                      inactiveColor: const Color.fromARGB(255, 57, 60, 97),
                      thumbColor: thumbColored,
                      onChanged: (double newValue) {
                        setState(() {
                          startValueSlider = newValue;
                        });
                      },
                    ),
                  ],
                ),
              )),
              Expanded(
                  //   flex: 1,
                  child: Row(
                children: [
                  Expanded(
                      child: reusedContainer(
                    colored: const Color(0xff1D1E33),
                    customWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Weight',
                          style: kLabalStyle,
                        ),
                        Text(
                          weightValue.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonID(
                              iconData: FontAwesomeIcons.circlePlus,
                              onPressed: () {
                                setState(() {
                                  if (weightValue == 0) {
                                    weightValue = 1;
                                  } else {
                                    weightValue++;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            ButtonID(
                                iconData: FontAwesomeIcons.circleMinus,
                                onPressed: () {
                                  setState(() {
                                    if (weightValue == 0) {
                                      weightValue = 1;
                                    } else {
                                      weightValue--;
                                    }
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: reusedContainer(
                    colored: const Color(0xff1D1E33),
                    customWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Age',
                          style: kLabalStyle,
                        ),
                        Text(
                          ageValue.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonID(
                              iconData: FontAwesomeIcons.circlePlus,
                              onPressed: () {
                                setState(() {
                                  if (ageValue == 0) {
                                    ageValue = 1;
                                  } else {
                                    ageValue++;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            ButtonID(
                                iconData: FontAwesomeIcons.circleMinus,
                                onPressed: () {
                                  setState(() {
                                    if (ageValue == 0) {
                                      ageValue = 1;
                                    } else {
                                      ageValue--;
                                    }
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              )),
              Expanded(
                flex: 0,
                child: GestureDetector(
                  onTap: () {
                    formula form = formula(
                        height: startValueSlider.toInt(), weight: weightValue);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPaged(
                                  calBMI: form.calculateBMI(),
                                  rangebmi: form.rangeBMI(),
                                  expbmi: form.describeBMI(),
                                  aged: ageValue.toString(),
                                )));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(color: thumbColored),
                    child: const Center(
                      child: Text(
                        'Click To Calculate BMI',
                        style: kLabalStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
