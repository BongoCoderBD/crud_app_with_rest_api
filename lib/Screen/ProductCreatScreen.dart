import 'package:flutter/material.dart';

import '../RestAPI/RestClient.dart';
import '../Style/Style.dart';

class ProductCreatScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ProductCreatScreenUI();

}

class ProductCreatScreenUI extends State<ProductCreatScreen> {

  Map<String, String> FormValues ={"Img":"", "ProductCode":"","ProductName":"","Qty":"","TotalPrice":"","UnitPrice":""};

  InputOnChange(MapKey, TextValue){
    setState(() {
      FormValues.update(MapKey, (value) => TextValue);
    });
  }

  FormOnSubmit() async{
    if(FormValues['ProductName']!.length==0){
      ErrorToast('Product Name Required !');
    }
    else if(FormValues['ProductCode']!.length==0){
      ErrorToast('Product Code Required !');
    }
    else if(FormValues['Img']!.length==0){
      ErrorToast('Image Link Required !');
    }
    else if(FormValues['UnitPrice']!.length==0){
      ErrorToast('Unit Price Required !');
    }
    else if(FormValues['Qty']!.length==0){
      ErrorToast('Product Qty Required !');
    }
    else if(FormValues['TotalPrice']!.length==0){
      ErrorToast('Total Price Required !');
    }
    else{
      await ProductCreatRequest(FormValues);
    }
  }


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
                  TextFormField(onChanged: (TextValue){InputOnChange("ProductName",TextValue);}, decoration: AppInputDecoration("Product Name"),),
                  sizedBox,
                  TextFormField(onChanged: (TextValue){InputOnChange("ProductCode",TextValue);}, decoration: AppInputDecoration("Product Code"),),
                  sizedBox,
                  TextFormField(onChanged: (TextValue){InputOnChange("Img",TextValue);}, decoration: AppInputDecoration("Product Image"),),
                  sizedBox,
                  TextFormField(onChanged: (TextValue){InputOnChange("UnitPrice",TextValue);}, decoration: AppInputDecoration("Unit Price"),),
                  sizedBox,
                  AppDropDownStyle(
                      DropdownButton(
                        value:FormValues['Qty'] ,
                        items:[
                          DropdownMenuItem(child: Text('Select Qt'),value: "",),
                          DropdownMenuItem(child: Text('1 pcs'),value: "1 pcs",),
                          DropdownMenuItem(child: Text('2 pcs'),value: '2 pcs',),
                          DropdownMenuItem(child: Text('3 pcs'),value: '3 pcs',),
                          DropdownMenuItem(child: Text('4 pcs'),value: '4 pcs',),
                        ],
                        onChanged: (Textvalue){
                          InputOnChange("Qty",Textvalue);
                        },
                        underline: Container(),
                        isExpanded: true,
                      )
                  ),
                  sizedBox,
                  TextFormField(onChanged: (TextValue){InputOnChange("TotalPrice",TextValue);}, decoration: AppInputDecoration("Total Price"),),
                  sizedBox,
                  Container(
                    child: ElevatedButton(onPressed: (){FormOnSubmit();},
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
