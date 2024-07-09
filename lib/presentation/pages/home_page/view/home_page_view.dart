import 'package:calculatorness/presentation/widgets/button/calculator_rounded_button.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 38, 47),
      body: _bodySkeleton(),
    );
  }

  Widget _bodySkeleton() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(flex: 4, child: _calculateScreenPart()),
          Expanded(flex: 6, child: _inputPart())
        ],
      ),
    );
  }

  Widget _calculateScreenPart() {
    return Container(
      padding: EdgeInsets.only(right: 30),
      color: Color.fromARGB(255, 39, 38, 47),
      alignment: Alignment.bottomRight,
      child: Container(
        height: 100,
        alignment: Alignment.bottomRight,
        child: Text(
          "1 + 12",
          style: TextStyle(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _inputPart() {
    return Container(
      color: const Color.fromARGB(255, 39, 38, 47),
      padding: EdgeInsets.all(20),
      child: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: CalculatorRoundedButton(value: "AC")),
                Expanded(child: CalculatorRoundedButton(value: "+/-")),
                Expanded(child: CalculatorRoundedButton(value: "%")),
                Expanded(child: CalculatorRoundedButton(value: "/")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CalculatorRoundedButton(value: "7")),
                Expanded(child: CalculatorRoundedButton(value: "8")),
                Expanded(child: CalculatorRoundedButton(value: "9")),
                Expanded(child: CalculatorRoundedButton(value: "*")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CalculatorRoundedButton(value: "4")),
                Expanded(child: CalculatorRoundedButton(value: "5")),
                Expanded(child: CalculatorRoundedButton(value: "6")),
                Expanded(child: CalculatorRoundedButton(value: "-")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CalculatorRoundedButton(value: "1")),
                Expanded(child: CalculatorRoundedButton(value: "2")),
                Expanded(child: CalculatorRoundedButton(value: "3")),
                Expanded(child: CalculatorRoundedButton(value: "+")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 1, child: CalculatorRoundedButton(value: "S")),
                Expanded(flex: 1, child: CalculatorRoundedButton(value: "0")),
                Expanded(flex: 1, child: CalculatorRoundedButton(value: ".")),
                Expanded(flex: 1, child: CalculatorRoundedButton(value: "=")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
