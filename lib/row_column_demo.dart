import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start  ,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Abdullah Rehman"),
            Text("25"),
            Text("02132454784"),
            Text("Rawalpindi"),
          ],
        ),
      ),
    );
  }
}
