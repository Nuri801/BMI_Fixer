import 'package:bmi_fixer/icon_content.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('UNIT SETTINGS        ')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Text(
            '   WEIGHT :',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild:
                        Center(child: Text('kg', style: kNumberTextStyle)),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild:
                        Center(child: Text('lb', style: kNumberTextStyle)),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Text(
            '   HEIGHT :',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild:
                        Center(child: Text('cm', style: kNumberTextStyle)),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild:
                        Center(child: Text('ft', style: kNumberTextStyle)),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('UNIT CONVERSION :', style: kLabelTextStyle),
                  ),
                  Text('1 kg ≈ 2.2 lbs; 1lb ≈ 0.45 kg', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 12),
                  Text('1 cm ≈ 0.39 inches; 1 inch ≈ 2.54 cms', style: TextStyle(fontSize: 20),)
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(onTap: () {}, buttonTitle: 'APPLY')
        ],
      ),
    );
  }
}
