// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import 'constants.dart';

class reusedPersonContainer extends StatelessWidget {
  const reusedPersonContainer(
      {super.key, required this.icon, required this.labal});

  final IconData icon;
  final String labal;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: const Color(0xff8D8E98),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          labal.toString(),
          style: kLabalStyle,
        ),
      ],
    );
  }
}
