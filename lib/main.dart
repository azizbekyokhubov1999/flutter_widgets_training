import 'package:flutter/material.dart';
import 'package:flutter_widgets_training/pages/analog_watch.dart';
import 'package:flutter_widgets_training/pages/animated_gridview.dart';
import 'package:flutter_widgets_training/pages/animated_text.dart';
import 'package:flutter_widgets_training/pages/animated_text_kit.dart';
import 'package:flutter_widgets_training/pages/back_drop_filter_glassmorhism.dart';
import 'package:flutter_widgets_training/pages/baseline_widget.dart';
import 'package:flutter_widgets_training/pages/clip_path.dart';
import 'package:flutter_widgets_training/pages/color_changer.dart';
import 'package:flutter_widgets_training/pages/constrained_box.dart';
import 'package:flutter_widgets_training/pages/convex_bottom_nav_bar.dart';
import 'package:flutter_widgets_training/pages/curved_animation.dart';
import 'package:flutter_widgets_training/pages/divider_example.dart';
import 'package:flutter_widgets_training/pages/drawer_header.dart';
import 'package:flutter_widgets_training/pages/expansion_tile.dart';
import 'package:flutter_widgets_training/pages/fitted_box.dart';
import 'package:flutter_widgets_training/pages/flutter_rating_bar.dart';
import 'package:flutter_widgets_training/pages/gif_making.dart';
import 'package:flutter_widgets_training/pages/gradient_colors.dart';
import 'package:flutter_widgets_training/pages/grid_tile_widget.dart';
import 'package:flutter_widgets_training/pages/hiden_appbar.dart';
import 'package:flutter_widgets_training/pages/modern_bottom_navbar.dart';
import 'package:flutter_widgets_training/pages/pdf_reader.dart';
import 'package:flutter_widgets_training/pages/positioned_widget.dart';
import 'package:flutter_widgets_training/pages/remove_appbar_back_button.dart';
import 'package:flutter_widgets_training/pages/render_flex_error.dart';
import 'package:flutter_widgets_training/pages/rotate_widget.dart';
import 'package:flutter_widgets_training/pages/shadow_in_flutter.dart';
import 'package:flutter_widgets_training/pages/shimmer_effect.dart';
import 'package:flutter_widgets_training/pages/show_bottom_sheet.dart';
import 'package:flutter_widgets_training/pages/single_child_scroll_view.dart';
import 'package:flutter_widgets_training/pages/sliver_list.dart';
import 'package:flutter_widgets_training/pages/spacer_page.dart';
import 'package:flutter_widgets_training/pages/stack_widget.dart';
import 'package:flutter_widgets_training/pages/staggered_gridview.dart';
import 'package:flutter_widgets_training/pages/swipe_animation.dart';
import 'package:flutter_widgets_training/pages/toast_message.dart';
import 'package:flutter_widgets_training/pages/transform_widget.dart';
import 'package:flutter_widgets_training/pages/transparent_appbar.dart';
import 'package:flutter_widgets_training/pages/visibility_widget.dart';


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
      home: MyColorChanger(),

    );
  }
}

