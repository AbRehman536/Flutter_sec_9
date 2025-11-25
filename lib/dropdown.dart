import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String? selectedValue;
  List<String> items = ["Web", "Flutter" , "UI/UX", "Angular"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
        Container(
          width: 300,

          child: DropdownButton(
            hint: Text("Select Item"),
            value: selectedValue,
            items: items.map((item){
              return DropdownMenuItem(
                value: item,
                  child: Text(item));
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            }, ),
        )
        ,),
    );
  }
}
