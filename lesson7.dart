import 'dart:ffi';
import 'dart:math';

void main() {
  print(sum(2, 2));
  sum2(2, 2);
  print(subtract(5, 10));
  subtract2(5, 10);
  print(multiply(16, 3));
  multiply2(16, 3);
  print(divide(18, 2));
  divide(18, 2);
  greater(12, 15);
  smaller(12, 15);
  smallerEqual(12, 15);
  greaterEqual(12, 15);
  equal(12, 15);
  showUser("nurbolot", 28);
  print(showList([1, 5, 67, "Nurbolot", "Bishkek"]));
  hypotenuse(4, 3);
  square(5, 7);
  pyramid(16);
  checkEq(123321);
  checkEq2(412144);
  checkEq3("bcd");
}

// *** 1-1 ***
int sum(int a, int b) {
  return a + b;
}

void sum2(int a, int b) {
  print(a + b);
}

int subtract(int a, int b) {
  return (a - b);
}

void subtract2(int a, int b) {
  print(a - b);
}

int multiply(int a, int b) {
  return (a * b);
}

void multiply2(int a, int b) {
  print(a * b);
}

int divide(int a, int b) {
  return (a ~/ b);
}

void divide2(int a, int b) {
  print(a ~/ b);
}

// *** 2-2 ***
void greater(int a, int b) {
  if (a > b) {
    print("a>b = True");
  } else {
    print("a>b = False");
  }
}

void smaller(int a, int b) {
  if (a < b) {
    print("a<b = True");
  } else {
    print("a<b = False");
  }
}

void smallerEqual(int a, int b) {
  if (a <= b) {
    print("a<=b = True");
  } else {
    print("a<=b = False");
  }
}

void greaterEqual(int a, int b) {
  if (a >= b) {
    print("a>=b = True");
  } else {
    print("a>=b = False");
  }
}

void equal(int a, int b) {
  if (a == b) {
    print("a==b = True");
  } else {
    print("a==b = False");
  }
}

// *** 1 ***
void showUser(String username, int age) {
  print("Username: ${username}, Age: ${age}");
}

// *** 2 ***
List showList(List a) {
  return [a.first, a.last];
}

// *** 3 ***
dynamic hypotenuse(dynamic a, dynamic b) {
  print(sqrt(a * a + b * b));
}

// *** 4 ***
void square(int a, int b) {
  for (int i = 1; i <= a; i++) {
    print("*" * b);
  }
}

// *** 5 ***
void pyramid(int n) {
  int x = n ~/ 2;
  int j = 1;
  int k = 0;
  int l = 2;

  for (int i = 0; i <= x; i++) {
    if (n % 2 == 1) {
      print("${" " * (x - k)}${"*" * j}");
    } else {
      print("${" " * (x - k)}${"*" * l}");
    }
    k++;
    j = j + 2;
    l = l + 2;
  }
}

// *** 6 ***
void checkEq(int a) {
  if (a >= 100000 && a <= 999999) {
    List arr = a.toString().split('').map(int.parse).toList();
    if (arr[0] + arr[1] + arr[2] == arr[3] + arr[4] + arr[5]) {
      print("ДА!");
    } else {
      print("НЕТ!");
    }
  } else {
    print("Введите шестизначное число!");
  }
}

// *** 7 ***
void checkEq2(int a) {
  List arr = a.toString().split('').map(int.parse).toList();
  if (arr[0] >= 1 && arr[0] <= 3) {
    print("ДА!");
  } else {
    print("НЕТ!");
  }
}

// *** 8 ***
dynamic checkEq3(dynamic a) {
  List arr = a.split('');
  if (arr[0] == "a") {
    print("ДА!");
  } else {
    print("НЕТ!");
  }
}
