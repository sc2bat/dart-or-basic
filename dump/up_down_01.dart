import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Up & Down Game!");

  stdout.write("Enter the number of players: ");
  int playerCount = int.parse(stdin.readLineSync()!);

  List<int> deck = List.generate(52, (index) => index + 1)..shuffle();

  List<int> playerCards =
      List.generate(playerCount, (index) => deck.removeLast());

  print("First card opened: ${playerCards[0]}");

  bool gameEnded = false;

  while (!gameEnded) {
    for (int i = 0; i < playerCount; i++) {
      int currentCard = playerCards[i];

      int nextCard = deck.removeLast();
      print("Next card: $nextCard");

      stdout.write(
          "Player $i, do you think the next card will be 'up' or 'down'? ");
      String guess = stdin.readLineSync()!.toLowerCase();

      if ((guess == 'up' && nextCard <= currentCard) ||
          (guess == 'down' && nextCard >= currentCard)) {
        print(
            "Game over! Player $i guessed incorrectly. The correct card was $nextCard.");
        gameEnded = true;
        break;
      }

      playerCards[i] = nextCard;
    }
  }
}
