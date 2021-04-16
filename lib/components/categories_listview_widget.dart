import 'package:flutter/material.dart';
import 'package:multi_select_item/multi_select_item.dart';

class CategoriesListview extends StatefulWidget {
  const CategoriesListview({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesListviewState createState() => _CategoriesListviewState();
}

class _CategoriesListviewState extends State<CategoriesListview> {

  List categoriesImages = [
    './images/001-management.png',
    './images/002-art.png',
    './images/003-skincare.png',
    './images/004-saturn.png',
    './images/005-desktop.png',
    './images/006-bags.png',
    './images/007-first-aid-kit.png',
  ];

  List<String> categoriesNames = [
    'MBA',
    'Art',
    'Skincare',
    'Science',
    'IT',
    'Cosmetics',
    'Healthcare',
  ];

  int _selectedIndex;

  _onSelected(int index) {
    _selectedIndex != index
        ? setState(() => _selectedIndex = index)
        : setState(() => _selectedIndex = -1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 180,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => _onSelected(index),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: _selectedIndex == index ? Colors.blue : Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Image(
                          image: AssetImage(categoriesImages[index]),
                        ),
                      ),
                    ),
                    Text(categoriesNames[index]),
                  ],
                ),
              ),
            // ),
          );
        },
      ),
    );
  }
}
