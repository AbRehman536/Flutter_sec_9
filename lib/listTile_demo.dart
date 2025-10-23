import 'package:flutter/material.dart';

class ListtileDemo extends StatelessWidget {
  const ListtileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("List Tile"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return
          Card(
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Danish",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
              subtitle: Text("Hello , How are you?",style: TextStyle(fontSize: 15,color: Colors.white70),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
