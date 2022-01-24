import "dart:math" as math;

class NullSample {
  method1() {
    int x = 10;
    int? y = getNullable();

    if (y != null) {
      x = y;
    }
  }

  getNullable() {
    var rand = new math.Random();
    if (rand.nextInt(2) == 0) {
      return null;
    }
    return 1;
  }
}
