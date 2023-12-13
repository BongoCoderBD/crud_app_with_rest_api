import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/ProductCreatScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "CURD Rest Api App",
      debugShowCheckedModeBanner: false,
      home: ProductCreatScreen(),
    );
  }
}