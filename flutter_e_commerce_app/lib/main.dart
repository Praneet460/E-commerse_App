import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/ui/homePage.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      bool isDevicePlatformIos() {
        return Theme.of(context).platform == TargetPlatform.iOS;
      }

    return new MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "E-Commerce",
      home: new Home(),
    );
  }
}

