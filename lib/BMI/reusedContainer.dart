// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class reusedContainer extends StatelessWidget {
  const reusedContainer({
    super.key,
    required this.customWidget,
    required this.colored,
    this.onPres,
  });
  final Color colored;
  final Widget customWidget;
  final VoidCallback? onPres;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPres,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colored,
          borderRadius: BorderRadius.circular(6),
        ),
        child: customWidget,
      ),
    );
  }
}
