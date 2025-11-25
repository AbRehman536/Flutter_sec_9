import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
        Pinput(
          length: 6,
          showCursor: true,
          onCompleted: (value){
            print(value);
          },
          defaultPinTheme: PinTheme(
            width: 50, height: 50,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black)
            ),
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.red
            )
          ),

        ),),
    );
  }
}
