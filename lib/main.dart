import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/routes/app_pages.dart';
import 'package:todoapp/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
