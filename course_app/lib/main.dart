import 'package:course_app/ui/app.colors.dart';
import 'package:course_app/views/home_view.dart';
import 'package:course_app/views/your_courses_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
        title: 'Flutter Course Demo',
        theme: themeDataDefault,
        themeMode: ThemeMode.light,
        initialRoute: "/",
        routes: {
          HomeView.routeName: (context) => HomeView(),
          YourCoursesView.routeName: (context) => const YourCoursesView(),
        });
  }
}
