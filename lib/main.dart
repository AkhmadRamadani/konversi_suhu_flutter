import 'package:flutter/material.dart';
import 'package:flutter_application/widget/button_widget.dart';
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

  TextEditingController inputController = TextEditingController();

  void hitungSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      _kelvin = _inputUser + 273;
      _reamur = (4 / 5) * _inputUser;
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
              ButtonWidget(
                onPressed: hitungSuhu,
                title: 'Konversi',
              ),
              const SizedBox(
                height: 16,
              ),
              ResultWidget(
                kelvin: _kelvin,
                reamur: _reamur,
              )
            ],
          ),
        ),
      ),
    );
  }
}
