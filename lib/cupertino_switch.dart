import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({super.key});

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Switch"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
          ListTile(
            leading: Icon(isSwitchOn ? Icons.notifications : Icons.notification_important_outlined),
            title: Text("Notifications"),
            subtitle: Text(isSwitchOn ? "ON" : "OFF"),
            trailing: CupertinoSwitch(
              value: isSwitchOn,
              onChanged: (bool value) {
                setState(() {
                  isSwitchOn = value;
                });
              }, ),
          )
      ),
    );
  }
}
