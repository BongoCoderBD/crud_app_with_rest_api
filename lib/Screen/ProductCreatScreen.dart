import 'package:flutter/material.dart';

class ProductCreatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductCreatScreenUI();
  }
}

class ProductCreatScreenUI extends State<ProductCreatScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductCreatScreen"),
      ),
      body: Stack(
        children: [
          Container(
            child: (SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(onChanged: (value){},),
                  TextFormField(onChanged: (value){},),
                  TextFormField(onChanged: (value){},),
                  TextFormField(onChanged: (value){},),
                  TextFormField(onChanged: (value){},),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
