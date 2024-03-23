import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddSpent extends StatefulWidget {
  @override
  _AddSpentState createState() => _AddSpentState();
  final String categoryName;
  final String categoryName2;

  const AddSpent({
    Key? key,
    this.categoryName = '',
    this.categoryName2 = '',
  }) : super(key: key);
}

class _AddSpentState extends State<AddSpent> {
  num totalAmount = 0;
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inserimento Costi'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 40, // Puoi regolare l'altezza come preferisci
                  child: Center(
                    child: Text(
                      widget.categoryName2,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 40, // Puoi regolare l'altezza come preferisci
                  child: Center(
                    child: Text(
                      widget.categoryName,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              labelText: 'Inserisci qualcosa',
              floatingLabelAlignment: FloatingLabelAlignment.center,
              contentPadding: EdgeInsets.only(left: 40),
              suffixIcon: Icon(Icons.euro),
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            onChanged: (value) {
                inputValue = value;
              },
            onSubmitted: (value) {
              _updateTotal(int.tryParse(value) ?? 0);
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              _updateTotal(int.tryParse(inputValue) ?? 0);
                
            },
            child: Text('Conferma'),
          ),
        ],
      ),
    );
  }

  void _updateTotal(int value) {
    setState(() {
      // Aggiungi il valore in input alla variabile totalAmount
      totalAmount += value;
      print('Hai premuto il pulsante! Il valore aggiunto è: $totalAmount');
   
     
    });
  }
}
