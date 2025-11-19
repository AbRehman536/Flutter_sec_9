import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? selectedDate;
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Column(children: [
        Text(
          selectedDate == null ? "No Date Selected":
          DateFormat.yMMMMEEEEd().format(selectedDate!),
          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2100)).then((value){
                setState(() {
                  selectedDate = value;
                });
          });
        }, child: Text("Show Date Picker")),
        SizedBox(height: 20,),
        Text(
          selectedTime.format(context).toString(),
          style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w900,
          ),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((value){
                setState(() {
                  selectedTime = value!;
                });
          });
        }, child: Text("Show Time Picker"))
      ],),),
    );
  }
}
