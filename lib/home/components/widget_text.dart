import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
