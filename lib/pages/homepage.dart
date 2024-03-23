import 'package:flutter/material.dart';
import '../components/box_category.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _boxController;

  @override
  void initState() {
    super.initState();
    _boxController = TabController(length: _btabPages.length, vsync: this);
  }

  static List<Widget> _btabPages = <Widget>[
    Center(child: Text('TEXT')),
  ];

  @override
  void dispose() {
    _boxController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(alignment: WrapAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BoxCategory(
            categoryName: 'Cat 1',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.face,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 2',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.add_shopping_cart,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 3',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.apple,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 4',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.face,
            amountSpent: 2,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            BoxCategory(
            categoryName: 'Cat 5',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.network_wifi_3_bar_sharp,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 6',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.local_printshop,
            amountSpent: 2,
          ),
          ]),
          Center(
            child: CategoryBig(),
          ),
          Column(children: [
            BoxCategory(
            categoryName: 'Cat 1',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.face,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat2',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.add_shopping_cart,
            amountSpent: 2,
          ),
          ]),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           BoxCategory(
            categoryName: 'Cat 1',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.face,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 2',
            boxController: _boxController,
            icon: Icons.add_shopping_cart,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 3',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.apple,
            amountSpent: 2,
          ),
          BoxCategory(
            categoryName: 'Cat 4',
            categoryName2: 'Carta',
            boxController: _boxController,
            icon: Icons.face,
            amountSpent: 2,
          ),
        ]),
      ]),
    );
  }
}
