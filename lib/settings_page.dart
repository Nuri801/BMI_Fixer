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
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () {},
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () {},
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
