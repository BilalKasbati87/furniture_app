import 'package:flutter/material.dart';


class BackgroundGreyColor extends StatelessWidget {
  const BackgroundGreyColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Color(0XFFF7F7F7),
        ),
      ),
    );
  }
}
