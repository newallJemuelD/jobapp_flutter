import 'package:flutter/material.dart';
import 'components/appbar_widget.dart';
import 'components/categories_heading_widget.dart';
import 'components/categories_listview_widget.dart';
import 'components/search_heading.dart';
import 'components/search_listview_widget.dart';
import 'components/welcome_message_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AppbarWidget(),
                    WelcomeMessageWidget(),
                  ],
                ),
              ),
              CategoriesHeading(),
              CategoriesListview(),
              SearchHeading(),
              SearchListview(),
            ],
          ),
        ),
      ),
    );
  }
}








// Container(
//                 margin: EdgeInsets.only(right: 10),
//                 height: 180,
//                 padding: EdgeInsets.only(top: 20, bottom: 20),
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 7,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Container(
//                       margin: EdgeInsets.only(left: 10),
//                       height: 100,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                     );
//                   },
//                 ),
//               ),
// 
// 
// 
// Container(
              //   margin: EdgeInsets.only(right: 10),
              //   height: 200,
              //   padding: EdgeInsets.only(top: 20, bottom: 20),
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 7,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //         margin: EdgeInsets.only(left: 10),
              //         width: 120,
              //         decoration: BoxDecoration(
              //           color: Colors.grey,
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //       );
              //     },
              //   ),
              // ),