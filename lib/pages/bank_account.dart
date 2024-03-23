import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myfinance/components/add_income.dart';

class BankAccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BankAccountPageState();
}

var moneyf = NumberFormat('####.00', 'eu_EUR');

class Bank_account extends StatelessWidget {
  final String name;
  final IconData icon;
  final dynamic money;

  Bank_account({required this.name, required this.money, required this.icon});

  @override
  Widget build(BuildContext context) {
    dynamic formattedMoney;
    if (money.truncateToDouble() == money) {
      formattedMoney = money.toStringAsFixed(0); // Formatta senza decimali
    } else {
      formattedMoney = moneyf.format(money); // Formatta con due decimali
    }

    return ListTile(
      leading: Container(
          height: 40,
          width: 40,
          child: Icon(
            icon,
            color: Colors.white,
          ),
          decoration: boxdecoration_card()),
      title: Text(name),
      subtitle:
          Text(formattedMoney + ' €', style: TextStyle(color: Colors.white)),
      shape: Border(
        bottom: BorderSide(color: Colors.white, width: 0.5),
      ),
      iconColor: Colors.white,
      textColor: Colors.white,
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddIncome()));
      },
    );
  }
}

BoxDecoration boxdecoration_card() => BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.green,
      borderRadius: BorderRadius.circular(5),
    );

class BankAccountPageState extends State<BankAccountPage> {


  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
      Bank_account(name: 'Carta', money: 2.4, icon: Icons.credit_card),
      Bank_account(name: 'Contanti', money: 2, icon: Icons.wallet),
    ]);
  }
}
