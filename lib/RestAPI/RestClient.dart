import 'dart:convert';

import 'package:crudapp/Screen/ProductCreatScreen.dart';
import 'package:crudapp/Style/Style.dart';
import 'package:http/http.dart' as http;

Future<bool> ProductCreatRequest(FormValues) async{
  var URI = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var PostBody = json.encode(FormValues);
  var PostHeader = {"Content-Type": "application/json"};
  var responce = await http.post(URI, headers : PostHeader, body: PostBody );
  var ResultCode = responce.statusCode;
  var ResultBody =json.decode(responce.body);

  if(ResultCode == 200 && ResultBody["status"] == "success"){
    SuccessToast("Request Success");
    return true;
  }else{
    ErrorToast("Request Fail! Try again");
    return false;
  }
}