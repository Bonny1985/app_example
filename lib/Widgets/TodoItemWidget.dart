// ignore_for_file: file_names, unnecessary_this
import 'package:app_example/Models/TodoItem.dart';
import 'package:flutter/material.dart';

class TodoItemWidget extends StatefulWidget {
  final TodoItem item;

  const TodoItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  _TodoItemWidgetState createState() => _TodoItemWidgetState();
}

class _TodoItemWidgetState extends State<TodoItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.item.title),
          Checkbox(
              value: widget.item.checked,
              onChanged: (bool? value) {
                setState(() {
                  widget.item.checked = !widget.item.checked;
                });
                print("check=$value, items=${widget.item}");
              })
        ],
      ),
    );
  }
}

/*
class TodoItemWidget extends StatelessWidget {
  final TodoItem item;

  const TodoItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(this.item.title),
          Checkbox(
              value: false,
              onChanged: (bool? value) {
                print("check=$value, items=$item");
              })
        ],
      ),
    );
  }
}
*/