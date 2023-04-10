import 'package:course_app/ui/app.colors.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  const MainContainer({required this.color, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(large),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400]!,
                offset: const Offset(0, 0),
                spreadRadius: 0,
                blurRadius: 10),
          ]),
      margin: EdgeInsets.all(medium),
      padding: EdgeInsets.only(top: medium, left: medium),
      child: child,
    );
  }
}
