import 'package:flutter/material.dart';
import 'package:myfinance/components/add_spent.dart';

double boxSizeLarge = 150;
double boxSizeSmall = 45;
BoxDecoration boxdecoration() =>
    BoxDecoration(shape: BoxShape.circle, color: boxcolor);
EdgeInsets margininkwellcat = EdgeInsets.all(8);
EdgeInsets marginboxcat = EdgeInsets.all(8);
Color splashbox = Colors.grey;
Color textcolor = Colors.white;
Color iconcolor = Colors.white;
Color boxcolor = Colors.orange;
BorderRadius circle = BorderRadius.circular(1000000);

class BoxCategory extends StatefulWidget {
  final TabController boxController;
  final IconData icon;
  final String categoryName;
  final String categoryName2;
  final double amountSpent;

  const BoxCategory({
    Key? key,
    this.categoryName2 = '',
    required this.boxController,
    required this.icon,
    required this.amountSpent,
    this.categoryName = '',
  }) : super(key: key);

  @override
  _BoxCategoryState createState() => _BoxCategoryState();
}

class _BoxCategoryState extends State<BoxCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(widget.categoryName, style: TextStyle(color: textcolor)),
        InkWell(
          child: Container(
            child: Icon(widget.icon, color: iconcolor),
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
                    builder: (context) =>
                        AddSpent(categoryName: widget.categoryName, categoryName2: widget.categoryName2,)));
          },
        ),
        Text(widget.amountSpent.toStringAsFixed(2) + ' €',
            style: TextStyle(color: textcolor)),
      ]),
      margin: marginboxcat,
    );
  }
}

Widget CategoryBig() => Container(
    width: boxSizeLarge,
    height: boxSizeLarge,
    child: InkWell(
      child: Container(
        child: Icon(
          Icons.queue_play_next,
          color: Colors.white,
        ),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),
      ),
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(1000000),
      onTap: () {},
    ));
