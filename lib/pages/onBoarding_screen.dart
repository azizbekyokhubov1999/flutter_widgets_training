import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'o_image_container.dart';
import 'onboarding_home.dart';

class MyOnBoardingScreen extends StatefulWidget {
  const MyOnBoardingScreen({super.key});

  @override
  State<MyOnBoardingScreen> createState() => _MyOnBoardingScreenState();
}

class _MyOnBoardingScreenState extends State<MyOnBoardingScreen> {

  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index){
            setState(() {
              isLastPage = index == 3;
            });
          },
          controller: controller,
          children: [
            // //for page 1
            // Container(
            //   color: Colors.red,
            //   child: Center(
            //     child: Text("Page 1",
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 40,
            //       fontWeight: FontWeight.bold
            //     ),
            //     ),
            //   ),
            // ),
            // //for page 2
            // Container(
            //   color: Colors.blue,
            //   child: Center(
            //     child: Text("Page 2",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 40,
            //           fontWeight: FontWeight.bold
            //       ),
            //     ),
            //   ),
            // ),
            // //for page 3
            // Container(
            //   color: Colors.green,
            //   child: Center(
            //     child: Text("Page 3",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 40,
            //           fontWeight: FontWeight.bold
            //       ),
            //     ),
            //   ),
            // ),
            // //for page 4
            // Container(
            //   color: Colors.yellow,
            //   child: Center(
            //     child: Text("Page 4",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 40,
            //           fontWeight: FontWeight.bold
            //       ),
            //     ),
            //   ),
            // ),

            //pages widget
            buildImageContainer(
                Colors.white,
                "Explore hiking",
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                "assets/images/image1.webp",
            ),
            buildImageContainer(
              Colors.white,
              "Explore hiking",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              "assets/images/image2.jpg",
            ),
            buildImageContainer(
              Colors.white,
              "Explore hiking",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              "assets/images/image3jpg.jpg",
            ),
            buildImageContainer(
              Colors.white,
              "Explore hiking",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              "assets/images/image4.webp",
            ),

          ],
        ),
      ),

      bottomSheet: isLastPage ?
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.deepPurple,
                minimumSize: Size.fromHeight(70),
              ),
                onPressed: () async{
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool("showHome", true);

                Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingHomePage()));
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )
            ),
          ):  //for get started btn
      Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //text btn for skip
            TextButton(
                onPressed: (){
                  controller.jumpToPage(3);
                },
                child: Text("Skip",
                style: TextStyle(
                  fontSize: 18
                ),
                ),
            ),
            //smooth page indicator
            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                onDotClicked: (index){
                    controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeInOut
                    );
                },
                effect: WormEffect(
                  dotColor: Colors.purple.shade200,
                  activeDotColor: Colors.purple,

                ),
              ),
            ),
            //text btn for next
            TextButton(
              onPressed: (){
                controller.nextPage(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut
                );
              },
              child: Text("Next",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            )
          ],
        ),
      ),  // for bottom fields
    );
  }
}
