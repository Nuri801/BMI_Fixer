import 'package:bmi_fixer/constants.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({
    Key? key,
    required this.onTap,
    required this.unit,
  }) : super(key: key);

  final void Function()? onTap;
  final String unit;
  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      child: GestureDetector(child: Text(widget.unit), onTap: widget.onTap),
      decoration: BoxDecoration(
        color: kActiveCardColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
