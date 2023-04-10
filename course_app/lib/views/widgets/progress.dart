import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        LinearProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          minHeight: 10,
        ),
        LinearProgressIndicator(
          value: 0.5,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          minHeight: 10,
        ),
        LinearProgressIndicator(
          value: 0.5,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          minHeight: 10,
        ),
      ],
    );
  }
}
