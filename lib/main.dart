import 'package:flutter/material.dart';
import 'package:pruebas/screens/create_activity/general_information_screen.dart';
import 'package:pruebas/screens/create_activity/main_screen.dart';
import 'package:pruebas/widgets/custom_stepper.dart';
import 'package:pruebas/widgets/custom_stepper_controller.dart';
import 'package:pruebas/widgets/custom_text_form_field.dart';
import 'package:pruebas/widgets/date_text_form_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stepper',
      home: MainScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  CustomStepperController customStepperController = CustomStepperController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Column(
        children: [
          Center(
            child: CustomStepper(
              customStepperController: customStepperController,
              stepperItems: const {
                1: 0,
                2: 4,
                3: 0,
              },
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
          CustomTextFormField(
            label: 'Empresa',
            hintText: 'Su empresa...',
            validator: null,
            onChanged: (value) => print(value),
          ),
          const SizedBox(height: 20),
          DateTextFormField(
            label: 'Fecha',
            hintText: 'dd/mm/aaaa',
            validator: null,
            onChanged: (value) => print(value),
          ),
        ],
      ),
    );
  }
}
