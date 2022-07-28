import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_app_algoriza/helper/color_manager.dart';
import 'package:to_do_app_algoriza/helper/utility.dart';
import 'package:to_do_app_algoriza/presenation/screens/add_task_screen.dart';
import 'package:to_do_app_algoriza/presenation/screens/tasks_screen.dart';
import 'package:to_do_app_algoriza/presenation/widgets/common/custom_button.dart';
import 'package:to_do_app_algoriza/presenation/widgets/common/custom_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const CustomText(
            text: 'Board',
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 28,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.bell),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dehaze_rounded),
              color: Colors.black,
            ),
          ],
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
            const TabBar(
              isScrollable: true,
              indicatorColor: Colors.black,
              physics: BouncingScrollPhysics(),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Completed',
                ),
                Tab(
                  text: 'Uncompleted',
                ),
                Tab(
                  text: 'Favourite',
                ),
              ],
            ),
            Container(
              color: ColorManager.textSecondaryColor,
              width: double.infinity,
              height: 3,
            ),
            Expanded(
                child: TabBarView(children: [
                  TasksScreen(['sdfa', 'fsda', 'dfas', '', '', '', '', '']),
                  TasksScreen(['fgsd', 'fshfsdda']),
                  TasksScreen(['sdhsdffa', 'fssgda']),
                  TasksScreen(['sdfhfdsa', 'fsdsdfa'])
                ])),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CustomButton(
                text: 'Add a task',
                color: ColorManager.buttonColor,
                onPressed: () {
                  Utility.navigateTo(context, AddTaskScreen());
                },

              ),
            )
          ],
        ),
      ),
    );
  }
}
