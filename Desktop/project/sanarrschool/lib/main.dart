import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sanarrschool/home.dart';
import 'package:sanarrschool/inscription.dart';
import 'package:sanarrschool/connection.dart';
import 'package:sanarrschool/home/tabbar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var routes = <String, WidgetBuilder>{
       InscriptionScreen.routeName: (BuildContext context) => new InscriptionScreen(title: "Inscription"),
       ConnectionScreen.routeName: (BuildContext context) => new ConnectionScreen(title: "Connection"),
       MyTabs.routeName:(BuildContext context) => new MyTabs(title: "User"),
    };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red
      ),
      home: MyHomePage(title: 'SannarSchool'),
      routes: routes,
    );
  }
}
