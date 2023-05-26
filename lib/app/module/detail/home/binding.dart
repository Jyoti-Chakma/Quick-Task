import 'package:get/get.dart';
import 'package:quick_task/app/data/providers/task/provider.dart';
import 'package:quick_task/app/data/services/storage/repository.dart';
import 'package:quick_task/app/module/detail/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
