import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Single Selection"),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return
          ListTile(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedTileColor: Colors.blue,
            selectedColor: Colors.white,
            leading: Icon(Icons.notification_add_outlined),
            title: Text("Selected Index: $selectedIndex"),
            subtitle: Text("Index : $index"),
            trailing: Icon(selectedIndex == index ? Icons.remove : Icons.add ),
          );
        },
      ),
    );
  }
}
