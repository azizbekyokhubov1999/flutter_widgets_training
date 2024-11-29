import 'package:flutter/material.dart';
import 'package:flutter_widgets_training/pages/popup_menu_items.dart';
import 'package:popover/popover.dart';

class MyPopupButton extends StatelessWidget {
  const MyPopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
          context: context,
          bodyBuilder: (context) => MenuItems(),
        height: 200,
        width: 250,
        backgroundColor: Colors.red,
        direction: PopoverDirection.top,
        transitionDuration: Duration(milliseconds: 20),
      ),

      child: Icon(Icons.more_vert),
    );
  }
}
