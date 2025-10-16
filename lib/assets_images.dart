import 'package:flutter/material.dart';

class AssetsImagesDemo extends StatelessWidget {
  const AssetsImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
            Image.asset("assets/images/image.png",
            width: 300,
            height: 300,
              fit: BoxFit.cover,
            )
      ],),
    );
  }
}
