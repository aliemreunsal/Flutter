import 'package:flutter/material.dart';
import 'package:flutter_application_deneme/main.dart';
import 'package:flutter_application_deneme/ui/gunler.dart';
import 'package:flutter_application_deneme/ui/kayit.dart';
import 'package:flutter_application_deneme/ui/giris.dart';

import 'package:flutter/material.dart';


class gun extends StatelessWidget {
  
    final gunadi;
  const gun({Key? key, required this.gunadi}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(gunadi),),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}

