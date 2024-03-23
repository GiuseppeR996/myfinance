import 'package:flutter/material.dart';
import 'package:myfinance/components/box_balance.dart';
import 'package:myfinance/components/box_category.dart';
import 'package:myfinance/components/recharge_balance.dart';
import 'package:myfinance/components/setting_box.dart';

class AddIncome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddIncomeState();
}

Widget cardSection() => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          color: Colors.blue),
      margin: EdgeInsets.only(top: 8, right: 8, left: 16),
      child: Expanded(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 8, top: 8, right: 8),
                    child: Icon(Icons.credit_card)),
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 8, right: 8),
                  child: Text(
                    'Card',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Icon(Icons.star),
                    alignment: Alignment.centerRight,
                  ),
                )
              ],
            ),
            Padding(
                child: Text('Saldo del conto'),
                padding: EdgeInsets.only(top: 10)),
            Text(200.00.toString()),
          ],
        ),
      ),
    );

class AddIncomeState extends State<AddIncome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Opzioni Bilancio'),
        ),
        body: Column(children: [
          cardSection(),
          Row(children: [
            Expanded(
              child: Column(
                children: [
                  Text('Modifica', style: TextStyle(color: Colors.black)),
                  InkWell(
                      child: Container(
                        child: Icon(Icons.mode, color: Colors.yellow),
                        margin: margininkwellcat,
                        decoration: boxdecoration(),
                        height: boxSizeSmall,
                        width: boxSizeSmall,
                      ),
                      splashColor: splashbox,
                      borderRadius: circle,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => setting_box()));
                      }),
                  Text('Ricarica', style: TextStyle(color: Colors.black)),
                  InkWell(
                      child: Container(
                        child: Icon(Icons.add, color: Colors.yellow),
                        margin: margininkwellcat,
                        decoration: boxdecoration(),
                        height: boxSizeSmall,
                        width: boxSizeSmall,
                      ),
                      splashColor: splashbox,
                      borderRadius: circle,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => rechargeBalance()));
                      }),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('Bilancio', style: TextStyle(color: Colors.black)),
                  InkWell(
                      child: Container(
                        child: Icon(Icons.vertical_align_center_rounded,
                            color: Colors.yellow),
                        margin: margininkwellcat,
                        decoration: boxdecoration(),
                        height: boxSizeSmall,
                        width: boxSizeSmall,
                      ),
                      splashColor: splashbox,
                      borderRadius: circle,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Box_balance()));
                      }),
                  Text('Preleva', style: TextStyle(color: Colors.black)),
                  InkWell(
                      child: Container(
                        child: Icon(Icons.remove, color: Colors.yellow),
                        margin: margininkwellcat,
                        decoration: boxdecoration(),
                        height: boxSizeSmall,
                        width: boxSizeSmall,
                      ),
                      splashColor: splashbox,
                      borderRadius: circle,
                      onTap: () {}),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('Movimenti', style: TextStyle(color: Colors.black)),
                  InkWell(
                      child: Container(
                        child: Icon(Icons.list_alt, color: Colors.yellow),
                        margin: margininkwellcat,
                        decoration: boxdecoration(),
                        height: boxSizeSmall,
                        width: boxSizeSmall,
                      ),
                      splashColor: splashbox,
                      borderRadius: circle,
                      onTap: () {}),
                  Text('Trasferimento', style: TextStyle(color: Colors.black)),
                  InkWell(
                      child: Container(
                        child: Icon(Icons.arrow_forward, color: Colors.yellow),
                        margin: margininkwellcat,
                        decoration: boxdecoration(),
                        height: boxSizeSmall,
                        width: boxSizeSmall,
                      ),
                      splashColor: splashbox,
                      borderRadius: circle,
                      onTap: () {}),
                ],
              ),
            )
          ]),
        ]));
  }
}
