String breakStringIntoLines(String input) {
  List<String> words = input.split(' ');
  if (words.length == 2) {
    return words.join('\n');
  } else {
    return input;
  }
}
