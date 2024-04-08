class WordList {
  String[] words;
    WordList() {
    // Initialize the list of words
    words = new String[]{"cat", "dog", "sun", "hat", "run", "bed", "spider", "garden", "camera", "dragon"};
    this.words = words;
  }
  String getRandomWord() {
    // Select a random word from the list
    return words[int(random(words.length))];
  }
}
