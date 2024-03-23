import 'package:flutter/material.dart';
import '../components/box_category2-1.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Category1(
              boxController: _boxController,
              icon: Icons.work_outline,
              categoryName: 'Categoria 1',
            ),
            Category1(
              boxController: _boxController,
              icon: Icons.star,
              categoryName: 'Categoria 2',
            ),
            // Aggiungi altre categorie con diverse icone se necessario
          ],
        ),
      ),
    );
  }
}
