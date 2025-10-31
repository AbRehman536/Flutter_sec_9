import 'package:flutter/material.dart';
import 'package:flutter_sec_9/login_form.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListTile(
        onTap: (){
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.chat),
                    title: Text("Chats"),
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_add_outlined),
                    title: Text("Notifications"),
                  ),
                  ListTile(
                    leading: Icon(Icons.cancel),
                    title: Text("Cancel"),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ],);
              },
              );

        },
        leading: Icon(Icons.person),
        title: Text("Danish"),
        subtitle: Text("How are you ?"),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    );
  }
}
