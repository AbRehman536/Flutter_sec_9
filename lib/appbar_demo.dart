import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Text("Page Title"),
        centerTitle: true,
        actions: [
          Icon(Icons.favorite),
          Icon(Icons.search),
          Icon(Icons.notifications),
        ],
      ),
    );
  }
}
