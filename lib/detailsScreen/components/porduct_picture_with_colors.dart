import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPictureWithColors extends StatelessWidget {
  const ProductPictureWithColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 100),
          child: Column(
            children: [
              ColorDot(
                color: Color(0XFF723837),
              ),
              ColorDot(
                color: Color(0XFF2C2C2E),
              ),
              ColorDot(
                color: Color(0XFF39797A),
              ),
              ColorDot(
                color: Color(0XFF7A3E82),
              ),
            ],
          ),
        ),
        Container(
          height: 356,
          width: 224,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image_9.png'),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 30, top: 230),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0XFFFFFFFF),
            child: Icon(
              Icons.add,
              color: Color(0XFF14B1AB),
            ),
          ),
        ),

      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: color,
      ),
    );
  }
}
