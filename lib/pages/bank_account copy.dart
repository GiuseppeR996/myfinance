import 'package:flutter/material.dart';
import 'package:myfinance/components/add_income.dart';

class BankAccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BankAccountPageState();
}

BoxDecoration boxdecoration_card() => BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.green,
      borderRadius: BorderRadius.circular(5),
    );

class BankAccountPageState extends State<BankAccountPage> {
  @override
  Widget build(BuildContext context) {
    final listTiles = <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Conti',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Text(
                '2000.00€',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
      ListTile(
        leading: Container(
            height: 40,
            width: 40,
            child: Icon(
              Icons.credit_card,
              color: Colors.white,
            ),
            decoration: boxdecoration_card()),
        title: Text("Carta"),
        subtitle: Text("2.00€", style: TextStyle(color: Colors.white)),
        trailing: Text("3.00€"),
        shape: Border(
          bottom: BorderSide(color: Colors.white, width: 0.5),
        ),
        iconColor: Colors.white,
        textColor: Colors.white,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddIncome()));
        },
      ),
      ListTile(
        leading: Container(
            height: 40,
            width: 40,
            child: Icon(
              Icons.wallet,
              color: Colors.white,
            ),
            decoration: boxdecoration_card()),
        title: Text("Contanti"),
        subtitle: Text("2.00€", style: TextStyle(color: Colors.green)),
        trailing: Text("3.00€"),
        shape: Border(
          bottom: BorderSide(color: Colors.white, width: 0.5),
        ),
        iconColor: Colors.white,
        textColor: Colors.white,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddIncome()));
        },
      )
    ];
    return ListView(children: listTiles);
  }
}
