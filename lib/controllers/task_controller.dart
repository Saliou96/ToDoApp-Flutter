import 'package:get/get.dart';
import 'package:todoapp/data/models/task.dart';
import 'package:todoapp/data/services/task_service.dart';

class TaskController extends GetxController {
  final TaskService taskService = Get.find<TaskService>();

  var tasks = <Task>[].obs;

  @override
  void onInit() {
    tasks.value = taskService.getTodos();
    super.onInit();
  }

  void addTodo(String title) {
    if (title.isNotEmpty) {
      var newTodo = Task(title: title);
      taskService.addTodo(newTodo);
    }
  }

  void removeTodoAt(int index) {
    taskService.removeTodoAt(index);
  }

  void toggleTodoComplete(int index) {
    taskService.toggleTodoComplete(index);
  }
}
