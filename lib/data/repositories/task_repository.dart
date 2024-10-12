import 'package:todoapp/data/models/task.dart';

class TaskRepository {
  List<Task> tasks = [];

  List<Task> getTodos() {
    return tasks;
  }

  void addTodo(Task todo) {
    tasks.add(todo);
  }

  void removeTodoAt(int index) {
    tasks.removeAt(index);
  }

  void toggleTodoComplete(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
  }
}
