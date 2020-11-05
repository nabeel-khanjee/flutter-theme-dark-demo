
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// acha ab hamari do class ban gaee hein 
// or ek or baat jab bhee hum kisi class ky variable ky pechy undersce dekhty hein tw is ka matlab yeh private class hai ya private method hai 
// perli wali class ko abhee mai ignore karky chal raha hoon is liaw mainy usy hide kar diya hai 
// or mai apni startin dosri wali class say karoon ga 
// _MyApp mera private varivable expate kary ga state ko matlab abhee state ki baatho rahi hai 
// abhee hum container ko hata deingy or material app use karingy q ky abhee hum maerial app ki baat kar rahy hein 


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String mytext = "Hello World";


  void _changeText(){
    setState((){
      // is function ky andar humnay ek State ko set kardiya 
      if (mytext.startsWith("H")) {
        // agar text start hoga H say tw Welcome to My App ho jeew text after clicking on button  
        mytext = "Welcome to My App";
      } else {
        // Warna dobara Hellow World ho jeew 
        mytext ="Hello World";
      }
    });
  }

  Widget _bodywidget(){
    return new Container(
      // container ap tab use karty hoo jab ap ko kuch padding deni ho kuch margin deni ho matlan khud say customization karni ho app ky andar 
      padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // matlab is ka vertical potion ko center kardein 
            // b ap dekh sakty ho mainy ek column create kiya hoa hai 
            children: <Widget> [
              // coluem ky andar mainy ek widget pass kiya hai 
              new Text(mytext,style: TextStyle(
                fontSize: 22.0
              ),),
              new RaisedButton(
                // RaiseButton ek widger hai jis ko hum as a statefull widget ky tour pay use kareingy 
                child: new Text("Click Button" ,style: new TextStyle(
                  color: Colors.white,
                  
                )),
                // is ka hum nay ek chile banaya jis pay hum yeh bol rahy hein ky bhaee is ka text Chlick button hoga 
                onPressed: _changeText,
                // yaahan humnay ek method pass karwaya jo ky hum aagy banaeingy 
                color: Colors.red,
              )
            ],
          ),
        ),
      // EdgeInsets.all() ka matlab yeh hoa ky haar jagha say itni padding dedo q ky bat padding ki ki ja rahi hai 
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodywidget()
    );
  }
}