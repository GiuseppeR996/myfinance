import 'package:flutter/material.dart';

class Category1 extends StatelessWidget {
  final TabController boxController;
  final bool isTextVisible;
  final VoidCallback onInkWellTap;
  final IconData icon;
  final String categoryName;

  const Category1({
    Key? key,
    required this.boxController,
    required this.isTextVisible,
    required this.onInkWellTap,
    required this.icon,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(categoryName), // Nome della categoria
          InkWell(
            child: Container(
              child: Icon(icon, color: Colors.blue),
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
            onTap: onInkWellTap,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: isTextVisible ? 50.0 : 0.0,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0, 0),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: boxController.animation!,
                curve: Curves.easeInOut,
              )),
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Center(child: TextField(
                    style: TextStyle(color: Colors.white,),
                  ),),
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
