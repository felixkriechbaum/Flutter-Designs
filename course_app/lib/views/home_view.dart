import 'package:course_app/ui/app.colors.dart';
import 'package:course_app/views/drawer_view.dart';
import 'package:course_app/views/widgets/bottom_element.dart';
import 'package:course_app/views/widgets/main_container.dart';
import 'package:course_app/views/widgets/top_bar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  static const String routeName = "/";
  final String name =
      "${Faker().person.firstName()} ${Faker().person.lastName()}";
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme th = Theme.of(context).textTheme;
    return Scaffold(
      drawer: const DrawerView(),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: TopBar(widget.name, "assets/avatars/avatar_1.png")),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(large),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400]!,
                            offset: const Offset(0, 0),
                            spreadRadius: 0,
                            blurRadius: 10),
                      ]),
                  margin: EdgeInsets.all(medium),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(large),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400]!,
                            offset: const Offset(0, 0),
                            spreadRadius: 0,
                            blurRadius: 10),
                      ]),
                  margin: EdgeInsets.all(medium),
                )),
            const Expanded(
                flex: 3,
                child: MainContainer(
                    color: Colors.green,
                    child: Text(
                      "hallo",
                      style: TextStyle(color: Colors.black),
                    ))),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(xlarge),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400]!,
                        offset: const Offset(0, 0),
                        spreadRadius: 0,
                        blurRadius: 10),
                  ]),
              margin: EdgeInsets.all(medium),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomElement(
                    Icons.dashboard,
                    Icons.dashboard_outlined,
                    0,
                    selected,
                    onSelected: (value) => setState(() {
                      selected = value;
                    }),
                  ),
                  BottomElement(
                    Icons.book,
                    Icons.book_outlined,
                    1,
                    selected,
                    onSelected: (value) => setState(() {
                      selected = value;
                    }),
                  ),
                  BottomElement(
                    Icons.school,
                    Icons.school_outlined,
                    2,
                    selected,
                    onSelected: (value) => setState(() {
                      selected = value;
                    }),
                  ),
                  BottomElement(
                    Icons.shopping_bag,
                    Icons.shopping_bag_outlined,
                    3,
                    selected,
                    onSelected: (value) => setState(() {
                      selected = value;
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
