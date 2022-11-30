import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.kelvin, required this.reamur});
  final double reamur;
  final double kelvin;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text('Reamur'),
            Text('${reamur.round()}'),
          ],
        ),
        Column(
          children: [
            const Text('Kelvin'),
            Text('${kelvin.round()}'),
          ],
        ),
      ],
    );
  }
}
