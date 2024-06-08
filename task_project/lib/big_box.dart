import 'package:flutter/material.dart';

class BigBox extends StatelessWidget {
  const BigBox({super.key, required this.selectedColor});

  final Color selectedColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
    );
  }
}
