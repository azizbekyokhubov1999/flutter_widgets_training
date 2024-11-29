
import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {

  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
            steps: [
              Step(
                  title: Text("Step 1"),
                  content: Text("Enter your email")
              ),
              Step(
                  title: Text("Step 2"),
                  content: Text("Enter your password")
              ),
              Step(
                  title: Text("Step 3"),
                  content: Text("Enter your nickname")
              ),
            ],
          currentStep: _currentStep,
          onStepTapped: (int newIndex){
              setState(() {
                _currentStep = newIndex;
              });
          },
          onStepContinue: (){
              setState(() {
                if(_currentStep != 2){
                  _currentStep += 1;
                }
              });
          },
          onStepCancel: (){
              setState(() {
                if(_currentStep != 0){
                  _currentStep -= 1;
                }
              });
          },
        ),
      ),
    );
  }
}
