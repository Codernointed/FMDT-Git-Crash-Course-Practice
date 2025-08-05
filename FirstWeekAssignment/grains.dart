BigInt square(final int n, List<int> g) {
  for (int i = 0; i < g.length; i++) {
    if (i == n - 1) {
      print("$n has ${g[i]} grains");
      return BigInt.from(g[i]);
    }
  }
  return BigInt.from(0);
}

//Bigin Documentation
BigInt total(List<int> g) {
  BigInt sum = BigInt.zero;
  for (int i = 0; i < g.length; i++) {
    sum += BigInt.from(2).pow(i);
  }
  return sum;
}

void main() {
  final int total_squares = 64;

  // List<int> grains = List.generate(total_squares, (index) => index * 2 +1);
  // have one grain
  List<int> grains = [1];

  for (int i = 1; i < total_squares; i++) {
    grains.add(grains[i - 1] * 2);
  }

  print("Total grains were: ${total(grains)}");
  square(6, grains);
}
