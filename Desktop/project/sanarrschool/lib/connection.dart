import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConnectionScreen extends StatefulWidget {
   ConnectionScreen({Key key, this.title}) : super(key: key);
   final String title;
   static const String routeName = "/Connection";

   @override
  _ConnectionScreenState createState() => _ConnectionScreenState();
 }

 class _ConnectionScreenState extends State<ConnectionScreen> {
  
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail'
                )
              ),
             
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password'
                )
              ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[                 
                          RaisedButton(  
                              onPressed: (){},
                              textColor: Colors.white,
                              
                              color: Colors.purple,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Effacer'),
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              textColor: Colors.white,
                              color: Colors.blue,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Connexion'),
                              ),
                            )
                        ]
                    
              )
            ],
          ),
        )
      ),
    );
  }
}