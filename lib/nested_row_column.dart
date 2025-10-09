import 'package:flutter/material.dart';

class NestedRowColumnDemo extends StatelessWidget {
  const NestedRowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 40,),
        title: Text("Nested Row Column",style: TextStyle(
          color: Colors.orange,
          fontSize: 35,
          fontWeight: FontWeight.w100,
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.green,size: 35,),
          Icon(Icons.settings,color: Colors.yellow,size: 50,),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
        Text("Lorem Ipsum",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
        SizedBox(height: 15,),
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
        SizedBox(height: 15,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Icon(Icons.favorite),
          Column(children: [
            Icon(Icons.comment),
            Icon(Icons.comment),
          ],),
          Icon(Icons.bookmark),
          Column(children: [
            Icon(Icons.search),
            Icon(Icons.search),
          ],),
          Icon(Icons.share),
        ],)
      ],),
    );
  }
}
