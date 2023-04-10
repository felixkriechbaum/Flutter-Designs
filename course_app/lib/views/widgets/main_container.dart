import 'package:course_app/ui/app.colors.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final MaterialColor color;
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const MainContainer(
      {this.padding,
      this.margin,
      required this.color,
      required this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(large),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color, color[200]!]),
            borderRadius: BorderRadius.circular(large),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[400]!,
                  offset: const Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 10),
            ]),
        margin: margin ?? EdgeInsets.all(medium),
        padding: padding ?? EdgeInsets.only(top: medium, left: medium),
        child: child,
      ),
    );
  }
}
