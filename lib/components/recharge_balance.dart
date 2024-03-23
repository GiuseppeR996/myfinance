import 'package:flutter/material.dart';
import 'package:myfinance/components/add_income.dart';
import 'package:myfinance/components/add_spent.dart';
import 'package:myfinance/components/box_category.dart';

// ignore: must_be_immutable
class rechargeBalance extends StatefulWidget {
  var amountSpent = 0;

  @override
  State<StatefulWidget> createState() => rechargeBalanceState();
}

class rechargeBalanceState extends State<rechargeBalance>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _btabPages.length, vsync: this);
  }

  static const _btabPages = <Tab>[
    Tab(text: 'Entrata'),
    Tab(text: 'dal conto'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ricarica')),
      body: Column(children: [
        cardSection(),
        TabBar(
          tabs: _btabPages,
          controller: _tabController,
        ),
        Container(
          child: Column(children: [
            Text('Stipendio', style: TextStyle(color: Colors.black)),
            InkWell(
              child: Container(
                child: Icon(Icons.wallet, color: iconcolor),
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
                        builder: (context) => AddSpent(
                              categoryName2: 'Stipendio',
                              categoryName: 'Carta',
                            )));
              },
            ),
            Text(widget.amountSpent.toStringAsFixed(2) + ' €',
                style: TextStyle(color: textcolor)),
          ]),
          margin: marginboxcat,
        ),
      ]),
    );
  }
}
