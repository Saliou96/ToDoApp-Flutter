import 'package:get/get.dart';
import 'package:todoapp/controllers/task_controller.dart';
import 'package:todoapp/data/repositories/task_repository.dart';

class TaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(() => TaskController(TaskRepository()));
  }
}
