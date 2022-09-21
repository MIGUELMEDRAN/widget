import 'package:change_notifier_builder/change_notifier_builder.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/custom_stepper_controller.dart';

class CustomStepper extends StatelessWidget {
  final CustomStepperController customStepperController;
  final Map<int, int> stepperItems;
  // ignore: slash_for_doc_comments
  /**
   * [customStepperController] controla el indicador. sube o baja de step
   * [stepperItems] Un Map<int, int> para indicar los pasos principales y su subgrupo de steps.
   *                donde el key es el grupo principal y su value es el número de subgrupos que tendrá el step principal
   */
  CustomStepper({
    Key? key,
    required this.customStepperController,
    required this.stepperItems,
  }) : super(key: key);

  List<Widget> items = [];
  int indicatorStep = 0; //Indica cual stepper es el que se está dibujando

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierBuilder(
      notifier: customStepperController,
      builder: (context, notifier, child) {
        setStateStepper();
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: items),
        );
      },
    );
  }

  void setStateStepper() {
    indicatorStep = 0;
    customStepperController.totalStep = 0;
    items.clear();

    //Calculo el total de pasos del widget
    stepperItems.values.toList().forEach((element) {
      customStepperController.totalStep =
          customStepperController.totalStep + element;
    });
    customStepperController.totalStep =
        customStepperController.totalStep + stepperItems.keys.length;

    stepperItems.forEach(
      (key, value) {
        items.addAll(
          [
            Container(
              margin: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: customStepperController.currentStep == indicatorStep
                    ? Color(0XFF22593C)
                    : customStepperController.currentStep >= indicatorStep
                        ? Color(0XFF03A851)
                        : Colors.white,
                border: Border.all(),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                '$key',
                style: TextStyle(
                    color: customStepperController.currentStep >= indicatorStep
                        ? Colors.white
                        : Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 200,
              child: Divider(
                thickness: 1,
                color: customStepperController.currentStep > indicatorStep
                    ? Color(0XFF03A851)
                    : Colors.black,
              ),
            ),
          ],
        );
        indicatorStep++;

        for (int i = 0; i < value; i++) {
          items.addAll(
            [
              Container(
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: customStepperController.currentStep == indicatorStep
                      ? Color(0XFF22593C)
                      : customStepperController.currentStep >= indicatorStep
                          ? Color(0XFF03A851)
                          : Colors.white,
                  border: Border.all(),
                ),
                padding: const EdgeInsets.all(10),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  thickness: 1,
                  color: customStepperController.currentStep > indicatorStep
                      ? Color(0XFF03A851)
                      : Colors.black,
                ),
              ),
            ],
          );
          indicatorStep++;
        }
      },
    );
    items.removeLast();
  }
}
