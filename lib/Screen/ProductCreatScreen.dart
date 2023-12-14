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
                  AppDropDownStyle(
                      DropdownButton(
                        value: "",
                        items: [
                          DropdownMenuItem(child: Text("Select qt"), value: "",),
                          DropdownMenuItem(child: Text("1 pcs"), value: "1 pcs",),
                          DropdownMenuItem(child: Text("2 pcs"), value: "2 pcs",),
                          DropdownMenuItem(child: Text("3 pcs"), value: "3 pcs",),

                        ],
                        onChanged: (value){},
                        underline: Container(),
                        isExpanded: true,
                      )
                  ),
                  sizedBox,
                  TextFormField(onChanged: (value){}, decoration: AppInputDecoration("Total Price"),),
                  sizedBox,
                  Container(
                    child: ElevatedButton(onPressed: (){},
                        child: SuccessButtonChild("Submit"),
                      style: AppButtonStyle(),
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
