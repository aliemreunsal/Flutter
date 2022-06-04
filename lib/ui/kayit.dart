import 'package:flutter/material.dart';
import 'package:flutter_application_deneme/main.dart';

import 'package:flutter_application_deneme/ui/kayit.dart';
import 'package:flutter_application_deneme/ui/giris.dart';


class kayit extends StatelessWidget {
  const kayit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Kayıt Ekranı',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        appBar: AppBar(title: const Text("Kayıt Ekranı",
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),), 
        body: aRegisterHome()),
    );
  }
}

class aRegisterHome extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return RegisterHome(context);
  }
}



Widget RegisterHome(BuildContext context)
{
  final emailField = TextField(
    obscureText: false,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
     contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
     hintText: "Kullanıcı Adı",
     border: 
     OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)) 
    ),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
     contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
     hintText: "Parola",
     border: 
     OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)) 
    ),
  );

  /*final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.purple,
    child: MaterialButton(
      minWidth: MediaQuery
      .of(context)
      .size
      .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: (){

      },
      child: const Text("Giriş Yap",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),
    ),
  );*/

  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.purple,
    child: MaterialButton(
      minWidth: MediaQuery
      .of(context)
      .size
      .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: (){
        //Navigator.push(context, MaterialPageRoute(builder:(context) => kayit() ));
      },
      child: const Text("Kayıt Ol",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),
    ),
  );
  final backButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.purple,
    child: MaterialButton(
      minWidth: MediaQuery
      .of(context)
      .size
      .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) => MyApp() ));
      },
      child: const Text("Geri Dön",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),
    ),
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0,),
            emailField,
            SizedBox(height: 10.0),
            passwordField,
            SizedBox(height: 15.0),
            passwordField,
            SizedBox(height: 15.0),
            registerButton,
            SizedBox(height: 15.0),
            backButton,
          ],
        
  ),

),
  ),
  );
}