void main() {
  Map<int, List<String>> scrabbleScores = {
    1: [
      'A',
      'E',
      'I',
      'O',
      'U',
      'L',
      'N',
      'R',
      'S'
          'T',
    ],
    2: ['D', 'G'],
    3: ['B', 'C', 'M', 'P'],
    4: ['F', 'H', 'V', 'W', 'Y'],
    5: ['K'],
    8: ['J', 'X'],
    10: ['Q', 'Z'],
  };

  String word = "cabbage";
  word = word.toUpperCase();
  // word = word[3];
  // print(word);
  int score = 0;

  for (int i = 0; i < word.length; i++) {
    for (int key in scrabbleScores.keys) {
      if (scrabbleScores[key]!.contains(word[i])) {
        score += key;
      }
    }
  }
  word = word.toLowerCase();
  print("The word '$word' is worth $score points");
}
