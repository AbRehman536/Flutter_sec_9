import 'package:flutter/material.dart';
import 'package:flutter_sec_9/login_form.dart';

class DialogboxDemo extends StatelessWidget {
  const DialogboxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Image.asset("assets/images/first.png"),
        Text("Lorem ipsum",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                  context: context,
                builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Thank You"),
                      content: Text("You Like the Post"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Okay"))
                      ],
                    );
                },
                  );
            }, icon: Icon(Icons.favorite),),
            IconButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Thank You"),
                    content: Text("Do you want to comment on this post"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Okay"))
                    ],
                  );
                },
              );
            }, icon: Icon(Icons.comment),),
            IconButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Thank You"),
                    content: Text("Post Save successfully"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      }, child: Text("Back")),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));
                      }, child: Text("Next")),
                    ],
                  );
                },
              );
            }, icon: Icon(Icons.bookmark),),
            IconButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Thank You"),
                    content: Text("Do you want to share the post"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Okay"))
                    ],
                  );
                },
              );
            }, icon: Icon(Icons.share),),

        ],)
      ],),
    );
  }
}
