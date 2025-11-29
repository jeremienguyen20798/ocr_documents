import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final Function() onClick;

  const CustomButton({super.key, required this.content, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onClick();
      },
      color: Colors.blue,
      minWidth: double.infinity,
      height: 56.0,
      textColor: Colors.white,
      child: Text(content),
    );
  }
}
