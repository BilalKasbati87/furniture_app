import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BottomYellowInformationBar extends StatelessWidget {
  const BottomYellowInformationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0XFFF9D56E),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 27, left: 37),
              child: Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Feature',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 27, left: 37),
              child: Container(
                height: 2,
                width: 24,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 37,
                top: 23,
                right: 48,
              ),
              child: Container(
                child: Text(
                  'Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dolore Magna Aliquyam Erat, Sed Diam Voluptua. At Vero Eos Et Accusam Et Justo Duo Dolores Et Ea',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 102,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFF14B1AB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                          'assets/icons/heart.svg'),
                    ),
                  ),
                  Container(
                    height: 72,
                    width: 257,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(fontSize: 25),
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrows.svg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
