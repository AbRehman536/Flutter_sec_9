import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sec_9/gridView_builder.dart';
import 'package:flutter_sec_9/listTile_demo.dart';
import 'package:flutter_sec_9/multiple_selection.dart';

class CurvedBarDemo extends StatefulWidget {
  const CurvedBarDemo({super.key});

  @override
  State<CurvedBarDemo> createState() => _CurvedBarDemoState();
}

class _CurvedBarDemoState extends State<CurvedBarDemo> {
  List<Widget> screenList = [ListtileDemo(), GridviewBuilderDemo(),MultipleSelectionDemo()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value){
          setState(() {
            selectedIndex =value;
          });
        },
          backgroundColor: Colors.blue,
          buttonBackgroundColor: Colors.yellow,
          color: Colors.grey,
          items: [
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.person_2_outlined),
      ])
    );
  }
}
