import 'package:flutter/material.dart';
import 'package:flutter_sec_9/login_form.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Menu"),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) { 
            return [
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Profile"))),
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Linked Device"))),
              PopupMenuItem(child: TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Logout"))),
            ];
          },)
        ],
      ),
      drawer: Drawer(child: 
      ListView(children: [
        Container(
            color: Colors.blue,
            child: DrawerHeader(child: Icon(Icons.person, size: 50,))),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ],),),
    );
  }
}
