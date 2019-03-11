import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sanarrschool/inscription.dart';
import 'package:sanarrschool/connection.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (define below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {

void _onInscrirePressed() {
    Navigator.pushNamed(context, InscriptionScreen.routeName);
  }

void _onConnecterPressed() {
    Navigator.pushNamed(context, ConnectionScreen.routeName);
  }
  

  @override
  Widget build(BuildContext context){
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
                'assets/img-home.jpg',
              ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  Text(
                    'SannarSchool for Sciences',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[                 
                          RaisedButton(  
                              onPressed: _onInscrirePressed,
                              textColor: Colors.white,
                              
                              color: Colors.purple,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('S\'inscrire'),
                              ),
                            ),
                            RaisedButton(
                              onPressed:_onConnecterPressed,
                              textColor: Colors.white,
                              color: Colors.blue,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Connexion'),
                              ),
                            )
                        ]
                    
              )
            ],)
            
          ],
        ),
      ),
    );
  }
}
