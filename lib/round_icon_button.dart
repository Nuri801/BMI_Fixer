import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed, required this.onLongPressed});

  final IconData icon;
  final void Function()? onPressed;
  final void Function()? onLongPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onLongPress: onLongPressed,
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }

}