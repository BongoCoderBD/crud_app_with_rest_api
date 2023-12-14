import 'dart:convert';

import 'package:crudapp/Screen/ProductCreatScreen.dart';
import 'package:http/http.dart' as http;

ProductCreatRequest(FormValues) async{
  var URI = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var PostBody = json.encode(FormValues);
  var PostHeader = {"Content-Type": "application/json"};
  var responce = await http.post(URI, headers : PostHeader, body: PostBody );
}