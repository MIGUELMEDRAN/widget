import 'package:flutter/material.dart';
import 'package:pruebas/custom_stepper.dart';
import 'package:pruebas/custom_stepper_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  CustomStepperController customStepperController = CustomStepperController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stepper',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stepper'),
        ),
        body: Column(
          children: [
            Center(
              child: CustomStepper(
                customStepperController: customStepperController,
                stepperItems: const {1: 1, 2: 4, 3: 1, 4: 4, 5: 6, 6: 0},
              ),
            ),
            TextButton(
              child: const Text('Next'),
              onPressed: () {
                customStepperController.currentStep++;
              },
            ),
            TextButton(
              child: const Text('Back'),
              onPressed: () {
                customStepperController.currentStep--;
              },
            ),
          ],
        ),
      ),
    );
  }
}
