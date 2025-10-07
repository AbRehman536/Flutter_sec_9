import 'package:flutter/material.dart';

class FloatingActionButtonExtendedDemo extends StatelessWidget {
  const FloatingActionButtonExtendedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 40,),
        title: Text("FAB Demo",style: TextStyle(
          color: Colors.orange,
          fontSize: 35,
          fontWeight: FontWeight.w100,
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.green,size: 35,),
          Icon(Icons.settings,color: Colors.yellow,size: 50,),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {  },
        label: Text("Notifications",style: TextStyle(
          color: Colors.brown,
          fontSize: 30,
          fontWeight: FontWeight.w500
        ),),
        icon: Icon(Icons.notifications,color: Colors.purple,),
      
      ),

    );
  }
}
