import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.inputController,
    required this.title,
  });
  final TextEditingController inputController;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: title,
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: inputController,
      keyboardType: TextInputType.number,
    );
  }
}
