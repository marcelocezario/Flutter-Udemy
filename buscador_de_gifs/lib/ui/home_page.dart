import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _search;
  int _offset = 0;

  _getGifs() async {
    http.Response response;

    if (_search == null)
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=rTFroV9LGWvq8V4NrfF4uqdq6p46U0wC&limit=20&rating=G");
    else
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=rTFroV9LGWvq8V4NrfF4uqdq6p46U0wC&q=dogs&limit=20&offset=75&rating=G&lang=en");
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}}
