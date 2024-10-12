import 'package:get/get.dart';
import 'package:todoapp/data/models/task.dart';
import 'package:todoapp/data/repositories/task_repository.dart';

class TaskController extends GetxController {
  final TaskRepository todoRepository;

  TaskController(this.todoRepository);

  var todos = <Task>[].obs; // Liste observable

  @override
  void onInit() {
    todos.value = todoRepository.getTodos(); // Récupère la liste des tâches
    super.onInit();
  }

  void addTodo(String title) {
    if (title.isNotEmpty) {
      var newTodo = Task(title: title);
      todoRepository.addTodo(newTodo);
      // todos.add(newTodo);
    }
  }

  void removeTodoAt(int index) {
    todoRepository.removeTodoAt(index);
    // todos.removeAt(index);
  }

  void toggleTodoComplete(int index) {
    todoRepository.toggleTodoComplete(index);
    todos[index].isCompleted = !todos[index].isCompleted;
    todos.refresh(); // Rafraîchir la liste des tâches
  }
}
