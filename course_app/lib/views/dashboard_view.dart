import 'package:course_app/views/widgets/main_container.dart';
import 'package:course_app/views/widgets/new_class.dart';
import 'package:course_app/views/widgets/progress.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    TextTheme th = Theme.of(context).textTheme;
    return Column(
      children: const [
        Expanded(
          flex: 3,
          child: MainContainer(
              color: Colors.blue,
              child: NewClass(
                title: "New Blender 3D\nClass",
                caption: "Learn how to created stylized buildings",
                discount: "30% off",
                image: "assets/images/blender_course.png",
              )),
        ),
        Expanded(
          flex: 2,
          child: MainContainer(
            padding: EdgeInsets.all(16),
            color: Colors.purple,
            child: Progress(),
          ),
        ),
        Expanded(
          flex: 3,
          child: MainContainer(
            color: Colors.green,
            child: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
