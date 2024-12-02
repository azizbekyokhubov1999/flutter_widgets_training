import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class MySwipeAnimation extends StatelessWidget {
  const MySwipeAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                color: Colors.brown[300],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(55),
                  bottomLeft: Radius.circular(55),
                )
              ),
              child: Swiper(
                  itemCount: 7,
                layout: SwiperLayout.STACK,
                itemHeight: 280,
                itemWidth: 400,
                scrollDirection: Axis.vertical,
                duration: 500,
                loop: true,
                itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/images/sPeople$index.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    );
                },
              ),
            ),
          ),

          SizedBox(height: 50),
          Text("S W I P E _ A N I M A T I O N",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.teal
          ),
          )
        ],
      ),
    );
  }
}
