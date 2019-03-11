import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sanarrschool/validation.dart';
import 'package:sanarrschool/home/tabbar.dart';


class InscriptionScreen extends StatefulWidget {
   InscriptionScreen({Key key, this.title}) : super(key: key);
   final String title;
   static const String routeName = "/Inscription";

   @override
  _InscriptionScreenState createState() => _InscriptionScreenState();
 }

 class _InscriptionScreenState extends State<InscriptionScreen> {
  
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   // bool _autovalidate = false;
    Validations _validations = new Validations();
     int _radioValue1 = -1;
     int correctScore = 0;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:

          break;
        case 1:

          break;
      }
    });
  }

    void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

    void _handleSubmitted() {
          Navigator.pushNamed(context, MyTabs.routeName);

  }

  void _validateForm(){
    // Validate will return true if the form is valid, or false if
    // the form is invalid.
    Scaffold.of(context).showSnackBar(SnackBar(duration: Duration(minutes: 1),content: Text('Processing Data')));

    if (_formKey.currentState.validate()) {
      // If the form is valid, display a snackbar. In the real world, you'd
      // often want to call a server or save the information in a database
      Scaffold.of(context).showSnackBar(SnackBar(duration: Duration(minutes: 1),content: Text('Processing Data')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
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
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'Nom',
                  labelText: 'Nom'
                ),
                validator: _validations.validateName,
                onSaved: (String name) {
                  
                },
              ),
              new TextFormField(
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'Prenom',
                  labelText: 'Prenom'
                ),
                validator: _validations.validateName,
                onSaved: (String prenom) {
                  
                },
              ),
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail'
                ),
                validator: _validations.validateEmail,
                onSaved: (String email) {
                },
              ),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password'
                )
              ),
              new TextFormField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintText: 'Adresse',
                  labelText: 'Address'
                ),
                validator: _validations.validatePassword,
                onSaved: (String password) {
                 
                }

              ),
               new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          'Masculin',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          value: 0,
                          groupValue: _radioValue1,
                          onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Feminin',
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Radio(
                          value: 1,
                          groupValue: _radioValue1,
                          onChanged: _handleRadioValueChange1,
                        ),
                      ],
               ),
               new TextFormField(
                keyboardType: TextInputType.text, //
                decoration: new InputDecoration(
                  hintText: 'Date de Naissance',
                  labelText: 'Date de Naissance'
                ),
                validator: _validations.validateNaissance,
                onSaved: (String naissance) {
                }
              ),
              Center(
                child: RaisedButton(  
                onPressed: (){},
                
                textColor: Colors.white,
                color: Colors.pink,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Ajouter Photo'),
                ),
              ),
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
                              onPressed: _handleSubmitted,
                              textColor: Colors.white,
                              color: Colors.blue,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('S\'inscrire'),
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