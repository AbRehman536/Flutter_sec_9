import 'package:flutter/material.dart';

class GridviewBuilderDemo extends StatelessWidget {
  const GridviewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 20, crossAxisSpacing: 20,
             maxCrossAxisExtent: 80
          ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
            return Container(color: Colors.red,);
        },
          ),
    );
  }
}
