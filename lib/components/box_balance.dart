import 'package:flutter/material.dart';
import 'package:myfinance/components/add_income.dart';

class Box_balance extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Box_balanceState();
}

class Box_balanceState extends State<Box_balance> {
  final TextEditingController _textEditingController =
      TextEditingController(text: inputValue.toString());

  static num inputValue = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bilancio')),
      body: Column(children: [
        cardSection(),
        TextField(
          style: TextStyle(
            // Centra il testo all'interno del TextField
            height: 1.5,
          ),
          controller: _textEditingController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: 'Saldo del conto',
            floatingLabelAlignment: FloatingLabelAlignment.center,
            contentPadding: EdgeInsets.only(left: 40),
            suffix: Icon(Icons.euro),
          ),
          onChanged: (inputValue) {
            setState(() {
              _textEditingController.text = inputValue;
            });
          },
          onSubmitted: (inputValue) => print(
              'Hai premuto il pulsante! Il testo inserito è: $inputValue'),
        ),
      ]),
    );
  }
}
