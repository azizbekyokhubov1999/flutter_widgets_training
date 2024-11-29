import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class MyCountryPicker extends StatefulWidget {
  const MyCountryPicker({super.key});

  @override
  State<MyCountryPicker> createState() => _MyCountryPickerState();
}

class _MyCountryPickerState extends State<MyCountryPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              showCountryPicker(
                  context: context,
                  onSelect: (Country country){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                            content: Text(
                            country.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic
                          ),
                        )
                        )
                    );
                  }
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            ),
            child: Text("Show Country",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            )
        ),
      ),
    );
  }
}
