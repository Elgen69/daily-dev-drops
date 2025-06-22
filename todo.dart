// todo.dart - Simple ToDo in Dart

class Task {
  String name;
  bool done = false;

  Task(this.name);

  void complete() => done = true;
}

void main() {
  var t1 = Task("Practice Dart");
  t1.complete();
  print("${t1.name}: ${t1.done}");
}
