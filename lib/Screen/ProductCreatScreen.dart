import 'package:flutter/material.dart';

import '../Style/Style.dart';

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
          //Background Graphics
          ScreenBacground(context),
          Container(
            child: (SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(onChanged: (value){}, decoration: AppInputDecoration("Product Name"),),
                  sizedBox,
                  TextFormField(onChanged: (value){}, decoration: AppInputDecoration("Product Code"),),
                  sizedBox,
                  TextFormField(onChanged: (value){}, decoration: AppInputDecoration("Product Image"),),
                  sizedBox,
                  TextFormField(onChanged: (value){}, decoration: AppInputDecoration("Unit Price"),),
                  sizedBox,
                  TextFormField(onChanged: (value){}, decoration: AppInputDecoration("Total Price"),),

                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
