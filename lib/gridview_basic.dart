import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridviewBasic extends StatelessWidget {
  const GridviewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: EdgeInsets.all(20),
          children: [
            Container(color: Colors.red,child: Column(children: [
              Text("Red"),
              Text("Red"),
              Text("Red"),
              Text("Red"),
              Text("Red"),
              Text("Red"),
              Text("Red"),
            ],),),
            Container(color: Colors.yellow,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
            Container(color: Colors.orange,),
            Container(color: Colors.black,),
            Container(color: Colors.purple,),
          ],
      ),
    );
  }
}
