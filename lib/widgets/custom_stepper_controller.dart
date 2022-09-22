import 'package:flutter/cupertino.dart';

class CustomStepperController extends ChangeNotifier{

  int _currentStep = 0;
  int totalStep = 0;

  set currentStep(int value) {
    _currentStep = value;
    if(_currentStep <= 0) _currentStep = 0; 
    if(_currentStep >= totalStep) _currentStep = (totalStep - 1);
    notifyListeners();
  } 

  int get currentStep => _currentStep;
  





}