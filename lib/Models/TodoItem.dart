// ignore_for_file: file_names

class TodoItem {

  String title = "";
  String description = "";
  bool checked = false;

  TodoItem({required this.title});

  @override
  String toString() {
    return "TodoItem{ title=$title, description=$description }";
  }
}