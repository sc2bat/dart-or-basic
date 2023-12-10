import 'dart:io';

void main() {
  print("Welcome to the Up & Down Game!");

  stdout.write("Enter the number of players: ");
  int playerCount = int.parse(stdin.readLineSync()!);

  List<int> deck = List<int>.generate(52, (index) => index + 1)..shuffle();

  List<int> playerCards = deck.sublist(0, playerCount);
  deck.removeRange(0, playerCount);

  print("First card opened: ${playerCards[0]}");

  bool gameEnded = false;

  while (!gameEnded && deck.isNotEmpty) {
    for (int i = 0; i < playerCount; i++) {
      int previousCard = playerCards[i];

      int nextCard = deck.removeAt(0);
      print("Player $i, the next card is: $nextCard");

      stdout.write(
          "Player $i, do you think the next card will be 'up' or 'down'? ");
      String prediction = stdin.readLineSync()!.toLowerCase();

      if ((prediction == 'up' && nextCard <= previousCard) ||
          (prediction == 'down' && nextCard >= previousCard)) {
        print(
            "Game over! Player $i guessed incorrectly. The correct card was $nextCard.");
        gameEnded = true;
        break;
      }

      playerCards[i] = nextCard;
    }
  }
}
