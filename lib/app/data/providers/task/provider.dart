import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quick_task/app/core/utils/keys.dart';
import 'package:quick_task/app/data/models/task.dart';
import 'package:quick_task/app/data/services/storage/services.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  // {'tasks':[
  // {'title' : 'Work', 'color' : '#123456', 'icon' : 0xe123,}
  // ]}

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString()).forEach((e) =>
        tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTask(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}