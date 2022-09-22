import 'package:flutter/material.dart';
import 'package:pruebas/screens/create_activity/general_information_screen.dart';
import 'package:pruebas/widgets/custom_appbar.dart';
import 'package:pruebas/widgets/custom_stepper.dart';
import 'package:pruebas/widgets/custom_stepper_controller.dart';
import 'package:pruebas/widgets/title_text.dart';

class MainScreen extends StatefulWidget {
  /**
   * [MainScreen] de las pantallas para crear una nueva actividad.
   * En [FIGMA]: Nueva Actividad/Crear Nueva Actividad
   */
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  CustomStepperController customStepperController = CustomStepperController();

  //Establecer los screens de los demás equipos
  List<Widget> screens = [
    GeneralnformationScreen(),
    GeneralnformationScreen(),
    GeneralnformationScreen(),
    GeneralnformationScreen(),
    GeneralnformationScreen(),
    GeneralnformationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Nueva Actividad',        
      ),
      endDrawer: const Drawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.03),
            Row(
              children: [
                GestureDetector(
                  child: const Icon(Icons.arrow_back),
                  onTap: () {
                    customStepperController.currentStep--;
                    setState(() {});
                  },
                ),
                const Spacer(),
                const TitleText('Información General'),
                const Spacer(),
              ],
            ),
            SizedBox(height: size.height * 0.03),

            CustomStepper(
              customStepperController: customStepperController,
              stepperItems: const {1: 0, 2: 3, 3: 0},
            ),
            SizedBox(height: size.height * 0.03),

            //************Screens here*****************/
            screens[customStepperController.currentStep],
            //******************************************/

            TextButton(
              child: const Text('Next'),
              onPressed: (){
                customStepperController.currentStep++;
                setState(() {});
              }, 
            ),
          ],
        ),
      ),
    );
  }
}