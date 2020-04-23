import 'package:flutter/material.dart';

void main() {
  runApp(new ListaTarefasApp());
}

class ListaTarefasApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListaScreen()
    );
  }  
}

class ListaScreen extends StatelessWidget {

  Widget getItem() {
    return new Row(
              children: <Widget>[
                IconButton(
                  icon: new Icon(Icons.check_box, color: Colors.green,),
                  iconSize: 42.0,
                  onPressed: () { },
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Lavar o carro"),
                    Text("13/09/2018")
                  ],
                )
              ],
            );
  } 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de Tarefas")
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextField()
            ),
            Expanded(child: 
              ListView (
                children: <Widget>[
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem(),
                  getItem()
                ],
              )
            )
          ],
        )
    );
  }
}