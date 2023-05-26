import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_task/app/core/utils/extension.dart';
import 'package:quick_task/app/data/models/task.dart';
import 'package:quick_task/app/module/detail/home/controller.dart';
import 'package:quick_task/app/module/detail/home/widgets/add_card.dart';
import 'package:quick_task/app/module/detail/home/widgets/task_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(4.0.wp),
            child: Text(
              "Quick Task",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Obx(
            () => GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                ...controller.tasks
                    .map((element) => TaskCard(task: element))
                    .toList(),
                AddCard()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
