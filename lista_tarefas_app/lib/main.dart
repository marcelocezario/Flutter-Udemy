import 'package:flutter/material.dart';
import 'package:lista_tarefas_app/tarefa.dart';

void main() {
  runApp(new TodoListApp());
}

class TodoListApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListaScreen()
    );
  }  
}

class ListaScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new ListaScreenState();
  }
}

class ListaScreenState extends State<ListaScreen> {

  List<Tarefa> tarefas = new List<Tarefa>();
  TextEditingController controller = new TextEditingController();
  

  void adicionaTarefa(String nome) {
    setState(() {
      tarefas.add(Tarefa(nome));
    });

    controller.clear();
  }

  Widget getItem(Tarefa tarefa) {
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
                    Text(tarefa.nome),
                    Text(tarefa.data.toIso8601String())
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
              child: TextField(
                controller: controller,
                onSubmitted: adicionaTarefa
              )
            ),
            Expanded(
              child: ListView.builder (
                itemCount: tarefas.length,
                itemBuilder: (_, indice) {
                  return getItem(tarefas[indice]);
                }
              )
            )
          ],
        )
    );
  }
}