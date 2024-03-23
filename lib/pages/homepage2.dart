import 'package:flutter/material.dart';
import '../components/box_category2.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _boxController;
  late bool _isTextVisible;

  @override
  void initState() {
    super.initState();
    _boxController = TabController(length: _btabPages.length, vsync: this);
    _isTextVisible = false;
  }
static List<Widget> _btabPages = <Widget>[
    Center(child: Text('TEXT')),
    Center(child: Text('TEXT2')),
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
              isTextVisible: _isTextVisible,
              onInkWellTap: () {
                setState(() {
                  _isTextVisible = !_isTextVisible;
                });
              },
              icon: Icons.work_outline,
              categoryName: 'Categoria 1',
            ),
            Category1(
              boxController: _boxController,
              isTextVisible: _isTextVisible,
              onInkWellTap: () {
                setState(() {
                  _isTextVisible = !_isTextVisible;
                });
              },
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
