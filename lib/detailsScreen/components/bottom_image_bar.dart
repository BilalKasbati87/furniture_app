import 'package:flutter/material.dart';

class BottomImageBar extends StatelessWidget {
  const BottomImageBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomImageBarItems(
          color: Color(0XFF000000),
        ),
        BottomImageBarItems(
          color: Color(0XFF000000).withOpacity(0.2),
        ),
        BottomImageBarItems(
          color: Color(0XFF000000).withOpacity(0.2),
        ),
      ],
    );
  }
}

class BottomImageBarItems extends StatelessWidget {
  const BottomImageBarItems({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 20),
      height: 2,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color,
        ),
      ),
    );
  }
}
