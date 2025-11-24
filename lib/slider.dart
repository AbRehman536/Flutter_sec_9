import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double currentValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
      SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.blue,
          inactiveTrackColor: Colors.blueGrey,
          thumbColor: Colors.red,
          overlayColor: Colors.red.withOpacity(0.5)
        ),
        child: Slider(
          value: currentValue,
          min: 0,
          max: 100,
          divisions: 100,
          label: currentValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              currentValue = value;
            });
          }, ),
      ),),
    );
  }
}
