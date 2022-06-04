import 'package:flutter/material.dart';
import 'package:flutter_application_deneme/main.dart';

import 'package:flutter_application_deneme/ui/kayit.dart';
import 'package:flutter_application_deneme/ui/giris.dart';

import 'gun.dart';

class gunler extends StatelessWidget {
  //const gunler({Key? key}) : super(key: key);
  final days=["Pazartesi","Salı","Çarşamba","Perşembe","Cuma","Cumartesi","Pazar" ];
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Günler',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        appBar: AppBar(title: const Text("Günler",
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),), 
        body: ListView.builder(
          itemCount: days.length,
          itemBuilder: (context,indext){
            return ListTile(
              title: Text(days[indext]),
              onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>gun(gunadi: days[indext],)));
                 },
               );
          }
          
        )
        
        ),
    );
  }
}

