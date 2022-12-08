import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.result});
  // final double reamur;
  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          const Text(
            'Hasil',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            result.toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}
