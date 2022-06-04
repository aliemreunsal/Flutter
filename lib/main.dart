import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_deneme/ui/kayit.dart';
import 'package:flutter_application_deneme/ui/giris.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Giriş Ekranı',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        appBar: AppBar(title: const Text("Giriş Ekranı",
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),), 
        body: aLoginHome()),
    );
  }
}

class aLoginHome extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return LoginHome(context);
  }
}

