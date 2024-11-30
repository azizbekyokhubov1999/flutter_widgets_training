import 'package:flutter/material.dart';
import 'package:flutter_widgets_training/pages/pdf_reader.dart';
import 'package:flutter_widgets_training/pages/shimmer_effect.dart';


//for onboarding example

// Future main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   final prefs = await SharedPreferences.getInstance();
//   final showHome = prefs.getBool("showHome") ?? false;
//   runApp( MyApp(
//     showHome: showHome,
//   ));
// }
//
// class MyApp extends StatelessWidget {
//
//   final bool showHome;
//
//   const MyApp({
//     super.key,
//     required this.showHome,
// });
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Widgets',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       home: showHome?  OnboardingHomePage() : MyOnBoardingScreen()
//     );
//   }
// }

//for onboarding example

// for shimmer effect

// void main(){
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Widgets",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           useMaterial3: true
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Shimmer effect",
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white
//             ),
//           ),
//           backgroundColor: Colors.green,
//           centerTitle: true,
//         ),
//         body: MyShimmerEffect(),
//       ),
//     );
//   }
// }

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: MyPDFReader(),
    );
  }
}

