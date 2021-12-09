// ignore_for_file: file_names

import 'package:app_example/Models/TodoItem.dart';
import 'package:app_example/Widgets/TodoItemWidget.dart';
import 'package:flutter/material.dart';

class TodoListWidget extends StatefulWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  _TodoListWidgetState createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  List<TodoItem> items = [];

  @override
  void initState() {
    items.add(TodoItem(title: "TODO 1"));
    items.add(TodoItem(title: "TODO 2"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<TodoItemWidget> widgetList = [];
    for (var i in items) {
      widgetList.add(TodoItemWidget(item: i));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO LIST"),
      ),
      body: Center(
        child: ListView(children: widgetList),
        /*child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return TodoItemWidget(item: items[index]);
          },
        ),*/
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewItem,
        tooltip: 'New Item',
        child: const Icon(Icons.add),
      ),
    );
  }

  void addNewItem() {
    setState(() {
      items.add(TodoItem(title: "TODO ${items.length + 1}"));
    });
    print("itams.length=${items.length}");
  }
}
