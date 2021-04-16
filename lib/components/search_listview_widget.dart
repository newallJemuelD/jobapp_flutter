import 'package:flutter/material.dart';

class SearchListview extends StatelessWidget {
  // const SearchListview({
  //   Key key,
  // }) : super(key: key);


  final List jobTitles = [
    'UI/UX Designer',
    'Flutter Developer',
    'Project Manager',
    'Consultant Builder',
    'Beautician',
    'Reaserch Scientist',
    'Healthcare Workers',
  ];


  final List oppurtunity = [
    '4',
    '14',
    '10',
    '5',
    '9',
    '20',
    '6',
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.only(right: 10),
      height: 200,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Text(
                    jobTitles[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    '${oppurtunity[index]} Job oppurtunity',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
