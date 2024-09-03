void main() {
  final data =
      toTitleCase("dari sabang sampai merauke dari merak sampe citayem");

  print(data);
}

String toTitleCase(String text) {
  // List of words to exclude from capitalization
  final List<String> exclusions = [
    // Indonesian words
    'di', 'ke', 'dari', 'dan', 'atau', 'dengan', 'pada', 'yang', 'untuk', 'oleh', 'dalam', 'dengan',

    // English words
    'a', 'an', 'and', 'the', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'by', 'up', 'off', 'in', 'with', 'over', 'of', 'from',
  ];

  // List of words to be ignored (preserved in their original form)
  final List<String> ignores = ['PRESISI'];

  List<String> words = text.replaceAll(RegExp(' +'), ' ').split(' ');

  // Iterate over the words and capitalize appropriately
  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      String lowerWord = words[i].toLowerCase();
      if (ignores.contains(words[i])) {
        // Skip modification for ignored words
        words[i] = words[i];
      } else if (i == 0 || !exclusions.contains(lowerWord)) {
        // Capitalize the first word or words not in the exclusions list
        words[i] = lowerWord[0].toUpperCase() + lowerWord.substring(1);
      } else {
        // Keep words in exclusions list in lowercase
        words[i] = lowerWord;
      }
    }
  }

  return words.join(' ');
}

