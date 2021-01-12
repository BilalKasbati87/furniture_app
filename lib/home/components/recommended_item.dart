import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    Key key,
    this.image,
    this.text,
    this.price,
    this.color,
  }) : super(key: key);

  final String image, text;
  final double price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 258,
      width: 353,
      color: color,
      child: Stack(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Positioned(
            top: 199,
            left: 20,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$text \n',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '\$$price',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 0,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFFF9D56E),
              ),
              child: Center(
                child: Container(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    'assets/icons/cart.svg',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
