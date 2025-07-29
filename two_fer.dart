String twoFer(String? name) {
  if (name!.isNotEmpty) {
    return "One for $name, one for me.";
  }
  // {
  //   return 'One for you, one for me.';
  // }

  return 'One for you, one for me.';
}

void main() {
  // Call the twoFer function and print its result
  print(twoFer(''));
}
