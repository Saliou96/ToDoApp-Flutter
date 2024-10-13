import 'package:get/get.dart';
import 'package:todoapp/data/models/task.dart';

class TaskService {
  RxList<Task> tasks = <Task>[].obs;

  List<Task> getTodos() {
    return tasks;
  }

  void addTodo(Task todo) {
    tasks.add(todo);
  }

  void removeTodoAt(int index) {
    tasks.removeAt(index);
  }

  // void toggleTodoComplete(int index) {
  //   tasks[index].isCompleted = !tasks[index].isCompleted;
  // }

  void toggleTodoComplete(int index) {
    var task = tasks[index];
    task.isCompleted.value = !task.isCompleted.value; // Mise à jour réactive
  }
}
