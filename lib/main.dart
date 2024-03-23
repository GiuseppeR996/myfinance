
import 'package:flutter/material.dart';
import 'package:myfinance/model/bank_model.dart';
import 'package:myfinance/pages/bank_account.dart';
import 'package:provider/provider.dart';

import 'pages/homepage.dart';
import 'pages/movimentPage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BankModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.credit_card_outlined), text: 'Conti'),
    Tab(icon: Icon(Icons.cloud), text: 'Categorie'),
    Tab(icon: Icon(Icons.forum), text: 'Movimenti'),
  ];

  static List<Widget> _ktabPages = <Widget>[
    Center(child: BankAccountPage()),
    Center(child: HomePage()),
    Center(child: MovimentPage()),
  ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _ktabPages.length, vsync: this);
  }

  Color backgroundColor = Colors.black;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: backgroundColor,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Center(
                child: Consumer<BankModel>(builder: (context, value, child) {
                  return Column(children: [
                    Text('${value.name}', style: TextStyle(fontSize: 16)),
                    Text('${value.totalPrice}', style: TextStyle(fontSize: 16)),
                  ]);
                }),
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.mode))],
            ),
            drawer: Drawer(
                child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState!.openEndDrawer();
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.menu),
                        SizedBox(width: 8.0),
                        Text("Home"),
                      ],
                    ),
                  ),
                ),
                ListTile(title: Text("Page1")),
                ListTile(title: Text("Page2")),
              ],
            )),
            body: TabBarView(
              controller: _tabController,
              children: _ktabPages,
            ),
            bottomNavigationBar: Material(
              color: Colors.white,
              child: TabBar(
                tabs: _kTabs,
                controller: _tabController,
              ),
            ),
          )),
    );
  }
}
