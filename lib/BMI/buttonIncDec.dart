// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';

class ButtonID extends StatelessWidget {
  const ButtonID({super.key, required this.iconData, required this.onPressed});
  final IconData? iconData;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: RawMaterialButton(
        child: Icon(
          iconData,
        ),
        onPressed: onPressed,
        elevation: 6.0,
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: const CircleBorder(),
        fillColor: const Color(0xff4C4F5E),
      ),
    );
  }
}
