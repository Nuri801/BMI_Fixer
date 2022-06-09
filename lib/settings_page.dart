import 'package:bmi_fixer/icon_content.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

// enum WeightUnit {
//   kg,
//   lb
// }
//
// enum HeightUnit {
//   cm,
//   ft
// }

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  // WeightUnit weightUnit = WeightUnit.kg;
  // HeightUnit heightUnit = HeightUnit.cm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('RATE        ')),
      ),
      body: Container(),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     SizedBox(height: 15),
      //     Text(
      //       '   WEIGHT :',
      //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //     ),
      //     Expanded(
      //       child: Row(
      //         children: [
      //           Expanded(
      //             child: ReusableCard(
      //               colour: weightUnit == WeightUnit.kg ? kActiveCardColor : kInactiveCardColor,
      //               cardChild:
      //                   Center(child: Text('kg', style: kNumberTextStyle)),
      //               onPress: () {
      //                 setState(() {
      //                   weightUnit = WeightUnit.kg;
      //                 });
      //               },
      //             ),
      //           ),
      //           Expanded(
      //             child: ReusableCard(
      //               colour: weightUnit == WeightUnit.lb ? kActiveCardColor : kInactiveCardColor,
      //               cardChild:
      //                   Center(child: Text('lb', style: kNumberTextStyle)),
      //               onPress: () {
      //                 setState(() {
      //                   weightUnit = WeightUnit.lb;
      //                 });
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Text(
      //       '   HEIGHT :',
      //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //     ),
      //     Expanded(
      //       child: Row(
      //         children: [
      //           Expanded(
      //             child: ReusableCard(
      //               colour: heightUnit == HeightUnit.cm ? kActiveCardColor : kInactiveCardColor,
      //               cardChild:
      //                   Center(child: Text('cm', style: kNumberTextStyle)),
      //               onPress: () {
      //                 setState(() {
      //                   heightUnit = HeightUnit.cm;
      //                 });
      //               },
      //             ),
      //           ),
      //           Expanded(
      //             child: ReusableCard(
      //               colour: heightUnit == HeightUnit.ft ? kActiveCardColor : kInactiveCardColor,
      //               cardChild:
      //                   Center(child: Text('ft', style: kNumberTextStyle)),
      //               onPress: () {
      //                 setState(() {
      //                   heightUnit = HeightUnit.ft;
      //                 });
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: SizedBox()
      //     ),
      //     BottomButton(onTap: () { Navigator.pop(context); }, buttonTitle: 'APPLY')
      //   ],
      // ),
    );
  }
}
