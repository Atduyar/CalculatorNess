import 'package:flutter/material.dart';

class CalculatorRoundedButton extends StatelessWidget {
  final String value;
  const CalculatorRoundedButton({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 80, 79, 88),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(
          child: Text(
        value,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      )),
    );
  }
}
