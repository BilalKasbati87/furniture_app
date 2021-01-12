import 'package:flutter/material.dart';

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '17.3\' | 23.3\'',
            style: TextStyle(fontSize: 18, height: 1.5),
          ),
          Text(
            'Keto Unique Red Chair',
            style: TextStyle(fontSize: 25, height: 1.5),
          ),
          Text(
            '\$56.3',
            style: TextStyle(
                fontSize: 19, height: 1.5, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
