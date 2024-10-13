import 'package:get/get.dart';
import 'package:todoapp/controllers/task_controller.dart';
import 'package:todoapp/data/services/task_service.dart';

class TaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(() => TaskController());
    Get.lazyPut<TaskService>(() => TaskService());
  }
}
