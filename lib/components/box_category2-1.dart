
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Category1 extends StatefulWidget {
  final TabController boxController;
  final IconData icon;
  final String categoryName;

  const Category1({
    Key? key,
    required this.categoryName,
    required this.boxController,
    required this.icon,
  }) : super(key: key);

  @override
  _Category1State createState() => _Category1State();
}

class _Category1State extends State<Category1> {
  bool _isTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.categoryName), // Nome della categoria
          InkWell(
            child: Container(
              child: Icon(widget.icon, color: Colors.blue),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 50.0,
              width: 50.0,
            ),
            splashColor: Colors.blue,
            borderRadius: BorderRadius.circular(8.0),
            onTap: () {
              // Quando l'InkWell viene toccato, cambia la visibilità del testo
              setState(() {
                _isTextVisible = !_isTextVisible;
              });
            },
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            height: _isTextVisible ? 100 : 0.0,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0, 0),
              ).animate(CurvedAnimation(
                parent: widget.boxController.animation!,
                curve: Curves.decelerate,
              )),
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Testo del container per ${widget.categoryName}',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: EdgeInsets.all(8.0),
    );
  }
}
