import 'package:flutter/material.dart';

class setting_box extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => setting_boxState();
}

class setting_boxState extends State<setting_box> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: Column(children: [
          Container(
            child: Text('Modifica conto'),
            alignment: Alignment.centerLeft,
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            alignment: Alignment.centerLeft,
            child: Text('Nome', style: TextStyle(fontSize: 12)),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Carta'),
          ),
        ]),
      ),
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Colore dell'ombra
                  spreadRadius: 1, // Raggio di diffusione
                  blurRadius: 2, // Raggio di sfocatura
                  offset: Offset(0, 0), // Offset dell'ombra rispetto al widget
                ),
              ],
            ),
            child: Column(children: [
              Container(
                child: Text('Conto'),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 8, top: 8, right: 8),
              ),
              ListTile(
                title: Text('Tipologia'),
                subtitle: Text('Normale'),
              ),
              ListTile(
                title: Text('Valuta conto'),
                subtitle: Text('Euro - €'),
                shape: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.5),
                ),
              ),
              ListTile(
                title: Text('descrizione'),
                subtitle: Text('Nessuno'),
                shape: Border(
                  bottom: BorderSide(color: Colors.white, width: 0.5),
                ),
              ),
            ])),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // Colore dell'ombra
                spreadRadius: 1, // Raggio di diffusione
                blurRadius: 2, // Raggio di sfocatura
                offset: Offset(0, 0), // Offset dell'ombra rispetto al widget
              ),
            ],
          ),
          child: Column(children: [
            Container(
              child: Text('Bilancio'),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 8, top: 8, right: 8),
            ),
            ListTile(
              title: Text('Saldo del conto'),
              trailing: Text(
                '200,00 €',
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
            ),
            ListTile(
              title: Text('Includi nel saldo totale'),
              trailing: Switch(
                onChanged: (bool value) {
                  setState(() => this._isSwitched = value);
                },
                value: this._isSwitched,
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
