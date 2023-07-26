// ignore_for_file: file_names
class CalculatorHelper {
  addition({required double num1, required double num2}) {
    return num1 + num2;
  }

  division({required double num1, required double num2}) {
    return num1 / num2;
  }

  multiplication({required double num1, required double num2}) {
    return num1 * num2;
  }

  subtractoin({required double num1, required double num2}) {
    return num1 - num2;
  }

  answerHelper({
    required double num1,
    required double num2,
    required String currentArtimetic,
  }) {
    if (currentArtimetic == '+') {
      return addition(num1: num1, num2: num2);
    } else if (currentArtimetic == '-') {
      return subtractoin(num1: num1, num2: num2);
    } else if (currentArtimetic == 'X') {
      return multiplication(num1: num1, num2: num2);
    } else if (currentArtimetic == '/') {
      if (num2 == 0) {
        return 'error';
      } else {
        return division(num1: num1, num2: num2);
      }
    } else {
      return 'error';
    }
  }

  answer({required List<String> listOfNumbers}) {
    List<String> operators = ['-', '+', '/', 'X'];
    String curNum;
    String firstnum = '';
    String secondnum = '';
    String currOperator = '';

    for (curNum in listOfNumbers) {
      if (firstnum.isEmpty && secondnum.isEmpty && curNum == '-') {
        firstnum += curNum;
      } else if (!operators.contains(curNum) && currOperator.isEmpty) {
        firstnum += curNum;
      } else if (currOperator.isEmpty && firstnum.isNotEmpty) {
        currOperator = curNum;
      } else if (currOperator.isNotEmpty &&
          firstnum.isNotEmpty &&
          !operators.contains(curNum)) {
        secondnum += curNum;
      } else if (firstnum.isNotEmpty &&
          secondnum.isNotEmpty &&
          currOperator.isNotEmpty) {
        double currVal = answerHelper(
            num1: double.parse(firstnum),
            num2: double.parse(secondnum),
            currentArtimetic: currOperator);

        firstnum = currVal.toString();
        secondnum = '';
        if (operators.contains(curNum)) {
          currOperator = curNum;
        } else {
          return "error";
        }
      } else {
        return 'error';
      }
    }
    double currVal = answerHelper(
        num1: double.parse(firstnum),
        num2: double.parse(secondnum),
        currentArtimetic: currOperator);
    firstnum = currVal.toString();
    return double.parse(firstnum);
  }
}
