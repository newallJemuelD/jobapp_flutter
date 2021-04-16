import 'package:flutter/material.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          padding: EdgeInsets.only(left: 40, top: 40),
          color: Colors.amber,
          height: 200,
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'Find your',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'dream job!',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, 60);

    var controlPoint = Offset(0, 0);
    var endPoint = Offset(60, 0);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(190, 0);

    var controlPoint2 = Offset(250, 0);
    var endPoint2 = Offset(250, 60);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    path.lineTo(250, 90);

    var controlPoint3 = Offset(250, 150);
    var endPoint3 = Offset(190, 150);
    path.quadraticBezierTo(
        controlPoint3.dx, controlPoint3.dy, endPoint3.dx, endPoint3.dy);

    path.lineTo(40, 150);

    var controlPoint4 = Offset(0, 150);
    var endPoint4 = Offset(0, 190);
    path.quadraticBezierTo(
        controlPoint4.dx, controlPoint4.dy, endPoint4.dx, endPoint4.dy);

    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}



// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();

//     path.lineTo(200, 0);

//     var controlPoint = Offset(size.width, size.height / 2);
//     var endPoint = Offset(200, size.height);
//     path.quadraticBezierTo(
//         controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

//     path.lineTo(0, size.height);
//     return path;
//   }

//   @override
//   bool shouldReclip(oldClipper) => false;
// }