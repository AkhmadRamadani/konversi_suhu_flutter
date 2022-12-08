import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget(
      {super.key,
      required this.dropdownOnChanged,
      required this.listItem,
      required this.newValue});
  final Function(String?)? dropdownOnChanged;
  final List<String> listItem;
  final String newValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: newValue,
      onChanged: dropdownOnChanged,
    );
  }
}
