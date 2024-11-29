import 'package:flutter/material.dart';

class MyAnimatedIcon extends StatefulWidget {
  const MyAnimatedIcon({super.key});

  @override
  State<MyAnimatedIcon> createState() => _MyAnimatedIconState();
}

class _MyAnimatedIconState extends State<MyAnimatedIcon> with SingleTickerProviderStateMixin {

 late AnimationController _animationController;


 @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }
 bool iconPlay = false;

  void isTapped(){
   if(iconPlay == false){
     _animationController.forward();
     iconPlay = true;
   }
   else{
     _animationController.reverse();
     iconPlay = false;
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: isTapped,
          child: AnimatedIcon(
              icon: AnimatedIcons.home_menu,
              progress: _animationController,
            size: 200,
          ),
        ),
      ),
    );
  }
}
