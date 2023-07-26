import 'package:calculater/methods/CalculatorHelper.dart';
import 'package:flutter/foundation.dart';

class ButtonState extends ChangeNotifier {
  String kbottomText = '';

  void asciiProvider({required String currentButtonAscii}) {
    List<String> operaters = ['/', 'X', '+', '-', '.'];
    try {
      if (kbottomText.isEmpty && currentButtonAscii == '-' ||
          !operaters.contains(kbottomText[kbottomText.length - 1]) &&
              kbottomText.isNotEmpty) {
        kbottomText += currentButtonAscii;
      }
      notifyListeners();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  void numberProvider({required String currentButtonAscii}) {
    kbottomText += currentButtonAscii;
    notifyListeners();
  }

  void clearKbottom() {
    kbottomText = '';
    notifyListeners();
  }

  void removeTheLastChar() {
    if (kbottomText.isNotEmpty) {
      kbottomText = kbottomText.substring(0, kbottomText.length - 1);
      notifyListeners();
    }
  }

  void answerProvider() {
    try {
      if (kbottomText.isNotEmpty) {
        kbottomText = CalculatorHelper()
            .answer(listOfNumbers: kbottomText.split(''))
            .toStringAsFixed(2);
      }
    } catch (e) {
      if (kDebugMode) {
        print('error');
      }
    }

    notifyListeners();
  }
}
