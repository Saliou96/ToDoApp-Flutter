// class Task {
//   String title;
//   bool isCompleted;

//   Task({
//     required this.title,
//     this.isCompleted = false,
//   });
// }


import 'package:get/get.dart';

class Task {
  String title;
  RxBool isCompleted;

  Task({
    required this.title,
    bool isCompleted = false,
  }) : isCompleted = isCompleted.obs; // `RxBool` pour rendre la propriété réactive
}
