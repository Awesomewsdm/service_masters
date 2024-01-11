String breakStringIntoLines(String input) {
  final words = input.split(" ");
  if (words.length == 2) {
    return words.join("\n");
  } else {
    return input;
  }
}
