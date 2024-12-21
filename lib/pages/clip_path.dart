import 'package:flutter/material.dart';

class MyClipPath extends StatelessWidget {
  const MyClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          height: 400,
          color: Colors.deepPurple[400],
          child: Center(
            child: Text(
              "Clip Path",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();

    // first view //
    // path.lineTo(0, h);// move bottom-left corner of the Container
    // path.quadraticBezierTo(w/2, h-100, w, h); // draw a smooth curve from the bottom
    // // to the bottom right with a control point
    // // at (w/2 h-100), creating a dip in the middle
    // path.lineTo(w, 0); // draw a straight line to top-right
    // path.close(); // close the path by connecting the current point to the starting point

    //second view //
    // path.lineTo(0,  h-50); // start near the bottom
    // path.quadraticBezierTo(w/4, h, w/2, h-50); //first wave
    // path.quadraticBezierTo(3 * w/4, h-100, w, h-50); //second wave
    // path.lineTo(w, 0);
    // path.close();

    //third view //
    // path.lineTo(0, h - 100); // bottom left corner
    // path.lineTo(w/2, h); // peak at the middle
    // path.lineTo(w, h-100); //bottom right corner
    // path.lineTo(w, 0); //top right corner
    // path.close();

    //fourth view//
    path.lineTo(0, h-100); // start at bottom left
    path.quadraticBezierTo(w/2, h+50, w, h-100);// smooth arc curved
    path.lineTo(w, 0); //top right corner
    path.close(); //close path


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }


}
