import 'package:flutter/material.dart';
import 'package:quick_task/app/data/services/storage/services.dart';
import 'package:quick_task/app/module/detail/home/view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Task',
      home: HomePage(),
    );
  }
}

