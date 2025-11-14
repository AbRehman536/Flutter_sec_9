import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("TabBar"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              color: Colors.white,
              height: 50,
              child: TabBar(
                labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(icon: Icon(Icons.home),text: "Home",),
                    Tab(icon: Icon(Icons.settings),text: "Settings",),
                    Tab(icon: Icon(Icons.person_2_outlined),text: "Profile",),
                    Tab(icon: Icon(Icons.home),text: "Home",),
                    Tab(icon: Icon(Icons.settings),text: "Settings",),
                    Tab(icon: Icon(Icons.person_2_outlined),text: "Profile",),
                    Tab(icon: Icon(Icons.home),text: "Home",),
                    Tab(icon: Icon(Icons.settings),text: "Settings",),
                    Tab(icon: Icon(Icons.person_2_outlined),text: "Profile",),
                  ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Image.asset("assets/images/image.png"),
            Text("Home Page",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),)
          ],),),
          Center(child: Column(children: [
            Text("Settings"),
            Icon(Icons.settings),
          ],) ,),
          Center(child: Column(children: [
            Text("Profile"),
            ElevatedButton(onPressed: (){}, child: Text("Click Me"))
          ],),),
        ]),
      ),
    );
  }
}
