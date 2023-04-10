import 'package:flutter/material.dart';

class NewClass extends StatelessWidget {
  final String title;
  final String caption;
  final String discount;
  final String image;
  const NewClass(
      {required this.title,
      required this.caption,
      required this.discount,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme th = Theme.of(context).textTheme;
    return Stack(
      children: [
        Positioned(
          right: -64,
          bottom: -64,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.blue[600]!,
                  offset: const Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 32),
            ]),
            child: Image.asset(
              image,
              width: 256,
              filterQuality: FilterQuality.medium,
              isAntiAlias: true,
            ),
          ),
        ),
        Text(title, style: th.titleMedium),
        Positioned(
          top: 90,
          child: SizedBox(
            width: 200,
            child: Text(caption, style: th.labelSmall),
          ),
        ),
        Positioned(
          bottom: 16,
          child: Text(discount,
              style: th.bodyMedium!
                  .copyWith(color: Colors.white.withOpacity(0.75))),
        ),
      ],
    );
  }
}
