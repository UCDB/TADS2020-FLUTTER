// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and a [RaisedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Soma 2 numeros....';
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  void somar() {
    print("Clicou somar");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                TextField(
                    keyboardType: TextInputType.number,
                    controller: controller1,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Numero 1: ')),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller2,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Numero 2: '),
                ),
                RaisedButton(
                  onPressed: () {
                    int sum = (int.parse(controller1.text) +
                        int.parse(controller2.text));

                    print(sum);
                    // AlertDialog(
                    //   title: Text("Calculadora"),
                    //   content: Text("Soma : " + sum.toString()),
                    // );

                    //somar();
                  },
                  child: Text('Somar', style: TextStyle(fontSize: 20)),
                ),
              ])),
        ));
  }
}
