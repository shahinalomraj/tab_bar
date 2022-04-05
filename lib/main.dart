import 'package:flutter/material.dart';
import 'package:tab_bar/one.dart';
import 'package:tab_bar/two.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.camera),),
                Tab(icon: Icon(Icons.message),),
              ]),
            ),
            body: TabBarView(children: [
              One(),
              Two(),
            ],),
          ),
    ));
  }
}