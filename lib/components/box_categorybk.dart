import 'package:flutter/material.dart';


double boxsize = 45;
BoxDecoration boxdecoration() =>
    BoxDecoration(shape: BoxShape.circle, color: boxcolor);
EdgeInsets margininkwellcat = EdgeInsets.all(8);
EdgeInsets marginboxcat = EdgeInsets.all(8);
Color splashbox = Colors.grey;
Color textcolor = Colors.white;
Color iconcolor = Colors.white;
Color boxcolor = Colors.orange;
BorderRadius circle = BorderRadius.circular(1000000);

var text1 = 'Spesa';
Text NameCat = Text(text1, style: TextStyle(color: textcolor));
num money = 1.50;
Text sumcatmoney =
    Text(money.toString() + "0 €", style: TextStyle(color: textcolor));

Widget Category() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
          child: Container(
            child: Icon(Icons.face, color: iconcolor),
            margin: margininkwellcat,
            decoration: boxdecoration(),
            height: boxsize,
            width: boxsize,
          ),
          splashColor: splashbox,
          borderRadius: circle,
          onTap: () {
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            );
          },
        ),
        sumcatmoney,
      ]),
      margin: marginboxcat,
    );

Widget Category10() => Category();

Widget Category1() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
          child: Container(
            child: Icon(Icons.work_outline, color: iconcolor),
            margin: margininkwellcat,
            decoration: boxdecoration(),
            height: boxsize,
            width: boxsize,
          ),
          splashColor: splashbox,
          borderRadius: circle,
          onTap: () {
   
          },
        ),
        sumcatmoney,
      ]),
      margin: marginboxcat,
    );

Widget Category2() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
            child: Container(
              child: Icon(Icons.add_shopping_cart, color: iconcolor),
              margin: margininkwellcat,
              decoration: boxdecoration(),
              height: boxsize,
              width: boxsize,
            ),
            splashColor: splashbox,
            borderRadius: circle,
            onTap: () {}),
        sumcatmoney
      ]),
      margin: marginboxcat,
    );

Widget Category3() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
          child: Container(
            child: Icon(
              Icons.apple,
              color: Colors.white,
            ),
            margin: margininkwellcat,
            decoration: boxdecoration(),
            height: boxsize,
            width: boxsize,
          ),
          splashColor: splashbox,
          borderRadius: circle,
          onTap: () {},
        ),
        sumcatmoney
      ]),
      margin: marginboxcat,
    );

Widget Category4() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
          child: Container(
            child: Icon(
              Icons.face,
              color: iconcolor,
            ),
            margin: margininkwellcat,
            decoration: boxdecoration(),
            height: boxsize,
            width: boxsize,
          ),
          splashColor: splashbox,
          borderRadius: circle,
          onTap: () {},
        ),
        sumcatmoney
      ]),
      margin: marginboxcat,
    );

Widget Category5() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
          child: Container(
            child: Icon(
              Icons.network_wifi_3_bar_sharp,
              color: iconcolor,
            ),
            margin: margininkwellcat,
            decoration: boxdecoration(),
            height: boxsize,
            width: boxsize,
          ),
          splashColor: splashbox,
          borderRadius: circle,
          onTap: () {},
        ),
        sumcatmoney
      ]),
      margin: marginboxcat,
    );

Widget Category6() => Container(
      child: Column(children: [
        NameCat,
        InkWell(
          child: Container(
            child: Icon(
              Icons.local_printshop,
              color: iconcolor,
            ),
            margin: margininkwellcat,
            decoration: boxdecoration(),
            height: boxsize,
            width: boxsize,
          ),
          splashColor: splashbox,
          borderRadius: circle,
          onTap: () {},
        ),
        sumcatmoney
      ]),
      margin: marginboxcat,
    );

Widget CategoryBig() => Container(
    width: 150,
    height: 150,
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
