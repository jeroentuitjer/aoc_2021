import 'dart:io';

import 'dart:async';

class CounterStorage {
  Future<void> readCounter() async {
    int increase = 0;
    int decrease = 0;
    int equal = 0;
    final input = File('test/day_1/input.txt').readAsLinesSync();

    List<String> file = input;

    for (int i = 1; i < file.length; i++) {
      int numberBefore = i - 1;
      var numberToCheckString = file[i];
      int numberToCheckInt = int.parse(numberToCheckString);
      var previousNumber = file[numberBefore];
      int previousNumberInt = int.parse(previousNumber);

      if (numberToCheckInt < previousNumberInt) {
        decrease++;
      } else if (numberToCheckInt > previousNumberInt) {
        increase++;
      } else if (numberToCheckInt == previousNumberInt) {
        equal++;
      }
    }

    print(increase);
    print(decrease);
    print(equal);
  }
}
