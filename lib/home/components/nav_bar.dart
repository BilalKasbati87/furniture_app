import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar {
  String text, images;
  bool isActive;

  NavBar({this.text, this.images, this.isActive = false});
}

class NavBarItems extends StatefulWidget {
  const NavBarItems({
    Key key,
  }) : super(key: key);

  @override
  _NavBarItemsState createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  List<NavBar> navBars = [
    NavBar(text: 'Sofa', images: 'assets/icons/sofa.svg'),
    NavBar(text: 'Cupboards', images: 'assets/icons/cupboards.svg'),
    NavBar(text: 'Book shelf', images: 'assets/icons/shelf.svg'),
    NavBar(text: 'storages', images: 'assets/icons/storages.svg'),
    NavBar(text: 'beds', images: 'assets/icons/bed.svg'),
    NavBar(text: 'lamps', images: 'assets/icons/lamp.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: navBars.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 30, top: 30),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black.withOpacity(0.10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Container(
                  child: Row(
                    children: [
                      SvgPicture.asset(navBars[index].images),
                      SizedBox(width: 20),
                      Text(
                        navBars[index].text.toUpperCase(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
