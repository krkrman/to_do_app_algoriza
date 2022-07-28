import 'package:flutter/material.dart';
import 'package:to_do_app_algoriza/helper/color_manager.dart';
import 'package:to_do_app_algoriza/presenation/widgets/common/custom_checkbox.dart';
import 'package:to_do_app_algoriza/presenation/widgets/common/custom_text.dart';

class TasksScreen extends StatelessWidget {
  List<String> tasks = [];

  TasksScreen(this.tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: CustomCheckbox(
                  onChanged: () {},
                  isChecked: true,
                  activeColor: ColorManager.tasksColors[index % (ColorManager.tasksColors.length - 1)],
                  borderColor: ColorManager.tasksColors[index % (ColorManager.tasksColors.length - 1)]),
              title: CustomText(
                text: tasks[index],
              ),
            ),
          ],
        );
      },
    );
  }
}
