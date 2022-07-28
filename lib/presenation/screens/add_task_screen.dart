import 'package:flutter/material.dart';
import 'package:to_do_app_algoriza/helper/utility.dart';
import 'package:to_do_app_algoriza/presenation/widgets/common/border_less_form_field.dart';
import 'package:to_do_app_algoriza/presenation/widgets/common/custom_text.dart';

import '../../helper/color_manager.dart';
import '../widgets/common/custom_button.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen();

  final titleController = TextEditingController();
  final deadLineController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();
  final remindController = TextEditingController();
  final repeatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const CustomText(
          text: 'Add task',
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            color: ColorManager.textSecondaryColor,
            width: double.infinity,
            height: 3,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const CustomText(
                    text: 'Title',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BorderLessFormField(
                    validate: (String? value) {},
                    controller: titleController,
                    hint: 'Design Team Meeting',
                    backgroundColor: Colors.grey[100],
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomText(
                    text: 'Deadline',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BorderLessFormField(
                    validate: (String? value) {},
                    controller: deadLineController,
                    hint: '28/2/2020',
                    backgroundColor: Colors.grey[100],
                    suffixIcon: Icons.keyboard_arrow_down,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: 'Start Time',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            BorderLessFormField(
                              validate: (String? value) {},
                              controller: startTimeController,
                              hint: '11 AM',
                              backgroundColor: Colors.grey[100],
                              textInputType: TextInputType.text,
                              suffixIcon: Icons.access_time,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: 'End Time',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            BorderLessFormField(
                              validate: (String? value) {},
                              controller: endTimeController,
                              hint: '4 PM',
                              suffixIcon: Icons.access_time,
                              backgroundColor: Colors.grey[100],
                              textInputType: TextInputType.text,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomText(
                    text: 'Remind',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BorderLessFormField(
                    validate: (String? value) {},
                    controller: remindController,
                    hint: '10 minuits only',
                    backgroundColor: Colors.grey[100],
                    textInputType: TextInputType.text,
                    suffixIcon: Icons.keyboard_arrow_down,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomText(
                    text: 'Repeat',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BorderLessFormField(
                    validate: (String? value) {},
                    controller: repeatController,
                    hint: 'Weekly',
                    backgroundColor: Colors.grey[100],
                    textInputType: TextInputType.text,
                    suffixIcon: Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(24),
            child: CustomButton(
              text: 'Add a task',
              onPressed: () {},
              color: ColorManager.buttonColor,
            ),
          ),
        ],
      ),
    );
  }
}
