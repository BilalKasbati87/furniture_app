import 'package:flutter/material.dart';

class RecommendedSmall extends StatelessWidget {
  const RecommendedSmall({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedSmallItems(
            image: 'assets/images/image_3.png',
            text: 'Side Table',
            price: 45,
          ),
          SizedBox(width: 30),
          RecommendedSmallItems(
            image: 'assets/images/image_7.png',
            text: 'White Vase',
            price: 13,
          ),
        ],
      ),
    );
  }
}

class RecommendedSmallItems extends StatelessWidget {
  const RecommendedSmallItems({
    Key key,
    this.image,
    this.text,
    this.price,
  }) : super(key: key);
  final String image, text;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image(
            image: AssetImage(image),
          ),
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
      ],
    );
  }
}
