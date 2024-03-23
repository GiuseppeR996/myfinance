import 'package:flutter/material.dart';

import '../components/box_categorybk.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<StatefulWidget> createState() => HomePageState(); 
}
  class HomePageState extends State<HomePage>{
    late TabController _boxController;
 

  
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
          Category1(),
          Category2(),
          Category3(),
          Category4(),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            Category5(),
            Category6(),
          ]),
          Center(
            child: CategoryBig(),
          ),
          Column(children: [
            Category1(),
            Category2(),
          ]),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Category3(),
          Category4(),
          Category5(),
          Category6(),
        ]),
      ]),
      
    );
    
  }
  
  
  }

