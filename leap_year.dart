void main() {
  int year = 2020;
  print("Year $year is ${isLeapYear(year)}");
}

String isLeapYear(int year) {
  if (year % 4 == 0 || (year % 100 == 0 && year % 400 == 0)) {
    return "a Leap Year";
  } else {
    return "Not a Leap Year";
  }
}
