void main() {
  final data =
      toTitleCase("dari sabang sampai merauke dari merak sampe citayem");

  print(data);
}

String toTitleCase(String text) {
  // List of words to exclude from capitalization
  final List<String> exclusions = [
    // Indonesian words
    'di', 'ke', 'dari', 'dan', 'atau', 'dengan', 'pada', 'yang', 'untuk',
    'oleh', 'dalam', 'dengan',

    // English words
    'a', 'an', 'and', 'the', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'by',
    'up', 'off', 'in', 'with', 'over', 'of', 'from',
  ];

  List<String> words = text.replaceAll(RegExp(' +'), ' ').split(' ');

  // Iterate over the words and capitalize appropriately
  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      String lowerWord = words[i].toLowerCase();
      if (i == 0 || !exclusions.contains(lowerWord)) {
        words[i] = lowerWord[0].toUpperCase() + lowerWord.substring(1);
      } else {
        words[i] = lowerWord;
      }
    }
  }

  return words.join(' ');
}
