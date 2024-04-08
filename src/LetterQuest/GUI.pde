class GUI {
  String word;
  int lineHeight = 50; // Height of each line
  int letterSpacing = 20;
  int lineSpacing = lineHeight + letterSpacing; // Spacing between lines
  int incorrectGuesses = 0;
  boolean won = false;

  GUI(String word) {
    this.word = word;
    this.incorrectGuesses = incorrectGuesses;
    this.won = won;
  }
  String createGuessedWord(String word) {
    String result = "";
    boolean allLettersGuessed = true;
    for (int i = 0; i < word.length(); i++) {
      result += "_ ";
      char letter = word.charAt(i);
      if (!guessedLetters.contains(String.valueOf(letter))) {
        allLettersGuessed = false;
        break;
      }
    }
    if (allLettersGuessed) {
      won = true;
    }
  
  return result;
}
void display() {
  String displayWord = "";
  for (int i = 0; i < word.length(); i++) {
    char letter = word.charAt(i);
    if (guessedLetters.indexOf(letter) != -1) {
      displayWord += letter + " ";
    } else {
      displayWord += "_ ";
    }
  }
  text(displayWord, 150, height/2 + 50);
  text("Incorrect Guesses: " + incorrectGuesses, width/2, 100);
}

void keyPressed() {
  // Get the pressed key as a character
  char keyChar = key;

  // Check if the pressed key is a letter and if it's not already guessed
  if (Character.isLetter(keyChar) && guessedLetters.indexOf(keyChar) == -1) {
    // Add the guessed letter to the list of guessed letters
    guessedLetters += keyChar;

    // Check if the guessed letter is in the word
    if (word.indexOf(keyChar) != -1) {
      println("Correct guess: " + keyChar);
    } else {
      println("Incorrect guess: " + keyChar);
      incorrectGuesses++;
    }
    if (incorrectGuesses == 5) {
      gameOver();
    }
  }
}
//void checkWordGuessed() {
//  boolean allLettersGuessed = true;
//  for (int i = 0; i < word.length(); i++) {
//    char letter = word.charAt(i);
//    if (guessedLetters.indexOf(letter) == -1) {
//      allLettersGuessed = false;
//      break;
//    }
//  }
//  if (allLettersGuessed) {
//    won = true;
//  }
//}
}
