import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

const request = "https://api.hgbrasil.com/finance?format=json-cors&key=50e5bb16";

void main() async {

  http.Response response = await http.get(request);
  print(response.body);

  runApp(MaterialApp(
    home: Container()
  ));
}