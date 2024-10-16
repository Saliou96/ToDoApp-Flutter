import 'package:get/get.dart';
import 'package:todoapp/bindings/task_binding.dart';
import 'package:todoapp/ui/views/task_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => TaskView(),
      binding: TaskBinding(),
    ),
  ];
}
