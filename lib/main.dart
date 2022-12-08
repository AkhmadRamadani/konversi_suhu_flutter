import 'package:flutter/material.dart';
import 'package:flutter_application/widget/button_widget.dart';
import 'package:flutter_application/widget/dropdown_widget.dart';
import 'package:flutter_application/widget/input_widget.dart';
import 'package:flutter_application/widget/result_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _result = 0;
  String _newValue = "Kelvin";

  var listItem = [
    "Kelvin",
    "Reamur",
  ];

  TextEditingController inputController = TextEditingController();

  List<String> convertionHistory = [];

  void hitungSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin") {
        _result = _inputUser + 273;
      } else {
        _result = (4 / 5) * _inputUser;
      }
      convertionHistory.add(
          "Suhu $_inputUser Celcius setelah dikonversi menjadi $_result $_newValue");
    });
  }

  void dropdownOnChanged(String? changeValue) {
    setState(() {
      _newValue = changeValue ?? 'Kelvin';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Konverter Suhu',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(
            8,
          ),
          child: Column(
            children: [
              InputWidget(
                inputController: inputController,
                title: "Masukkan Suhu Dalam Celcius",
              ),
              const SizedBox(
                height: 16,
              ),
              DropdownWidget(
                dropdownOnChanged: dropdownOnChanged,
                listItem: listItem,
                newValue: _newValue,
              ),
              const SizedBox(
                height: 16,
              ),
              ButtonWidget(
                onPressed: hitungSuhu,
                title: 'Konversi',
              ),
              const SizedBox(
                height: 16,
              ),
              ResultWidget(
                result: _result,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Riwayat Konversi",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: convertionHistory.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(convertionHistory[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
