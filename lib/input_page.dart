import 'dart:async';

import 'package:bmi_fixer/settings_page.dart';
import 'package:bmi_fixer/switch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'round_icon_button.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'package:iconsax/iconsax.dart';

enum Gender {
  male,
  female,
  notSelected,
}

enum UnitWeight {
  kg,
  lb,
}

enum UnitHeight {
  cm,
  ft,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  UnitHeight unitHeight = UnitHeight.cm;
  UnitWeight unitWeight = UnitWeight.kg;
  Gender selectedGender = Gender.notSelected;
  int height = 180;
  int weight = 60;
  int age = 18;
  late Timer _timer;

  // double convertHeightUnit () {
  //   if (unitHeight == UnitHeight.cm) {
  //     double heightInFt = height / 30.48;
  //     return heightInFt.round().toDouble();
  //   } else {
  //     double heightInCm = height * 30.48;
  //     return heightInCm.round().toDouble();
  //   }
  //
  //
  //   // if (unitHeight == UnitHeight.cm) {
  //   //   double heightInFt = height/30.48;
  //   //   return heightInFt.toStringAsFixed(1);
  //   // } else {
  //   //   double heightInCm = heightInFt
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: RawMaterialButton(
          // onLongPress: onLongPressed,
          child: Icon(Iconsax.setting_4, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
            //create the sliding window here;
          },
          elevation: 100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
          fillColor: Color(0xFF0A0D22),
        ),
        title: Center(child: Text('BMI CALCULATOR')),
        actions: [
          RawMaterialButton(
            // onLongPress: onLongPressed,
            child: Icon(Iconsax.refresh1, size: 30),
            onPressed: () {
              setState(() {
                height = 180;
                weight = 60;
                age = 18;
                selectedGender = Gender.notSelected;
              });
            },
            elevation: 100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            constraints: BoxConstraints.tightFor(width: 80, height: 56.0),
            fillColor: Color(0xFF0A0D22),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    // textBaseline: TextBaseline.alphabetic,
                    children: [
                      SizedBox(width: 35),
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      SizedBox(width: 6),
                      SwitchButton(
                        onTap: () {
                          // setState(() {  height = convertHeightUnit (); });
                          setState(() {unitHeight = unitHeight == UnitHeight.cm ? UnitHeight.ft : UnitHeight.cm;});
                          },
                        unit: unitHeight == UnitHeight.cm ? 'cm' : 'ft',
                      )
                      // Text(
                      //   'cm',
                      //   style: kLabelTextStyle,
                      // )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8E8D98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              colour: kActiveCardColor,
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                          // textBaseline: TextBaseline.alphabetic,
                          children: [
                            SizedBox(width: weight < 100? 45 : 13),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            SizedBox(width: 6),
                            SwitchButton(
                              onTap: () {setState(() {
                                unitWeight = unitWeight == UnitWeight.kg ? UnitWeight.lb : UnitWeight.kg;
                              });},
                              unit: unitWeight == UnitWeight.kg ? 'kg' : 'lb',
                            )
                            // Text(
                            //   'kg',
                            //   style: kLabelTextStyle,
                            // ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              onLongPressed: (TapDownDetails details) {
                                _timer = Timer.periodic(
                                    Duration(milliseconds: 70), (t) {
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  });
                                });
                              },
                              onTapUp: (TapUpDetails details) {
                                _timer.cancel();
                              },
                              onTapCancel: () {
                                _timer.cancel();
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              onLongPressed: (TapDownDetails details) {
                                _timer = Timer.periodic(
                                    Duration(milliseconds: 70), (t) {
                                  setState(() {
                                    if (weight >= 0) {
                                      weight++;
                                    }
                                  });
                                });
                              },
                              onTapUp: (TapUpDetails details) {
                                _timer.cancel();
                              },
                              onTapCancel: () {
                                _timer.cancel();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            // SizedBox(width: ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              onLongPressed: (TapDownDetails details) {
                                _timer = Timer.periodic(
                                    Duration(milliseconds: 70), (t) {
                                  setState(() {
                                    if (age > 0) {
                                      age--;
                                    }
                                  });
                                });
                              },
                              onTapUp: (TapUpDetails details) {
                                _timer.cancel();
                              },
                              onTapCancel: () {
                                _timer.cancel();
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              onLongPressed: (TapDownDetails details) {
                                _timer = Timer.periodic(
                                    Duration(milliseconds: 70), (t) {
                                  setState(() {
                                    if (weight >= 0) {
                                      age++;
                                    }
                                  });
                                });
                              },
                              onTapUp: (TapUpDetails details) {
                                _timer.cancel();
                              },
                              onTapCancel: () {
                                _timer.cancel();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculatorBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            buttonTitle: 'CALCULATE YOUR BMI',
          ),
        ],
      ),
    );
  }
}
