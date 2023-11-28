import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// 4명의 플레이어 Player1,  Player2,  Player3,  Player4
// 차례대로 순서가 돌아가
// 30의 배수는 'ahh' 출력
// 3의 배수 'clap' 출력
// 10의 배수 'rool' 을
// 나머지는 숫자 출력

// 범위 : 1 ~ 100 까지 출력
// 총 clap, rool, ahh 총 개수 출력
// 플레이 당 clap 을 했는지 출력
// 가장많은 clap을 한 player 를 출력

void main() {
  int i = 1;
  int chkAhh = 0;
  int chkClap = 0;
  int chkRool = 0;

  List<String> player = [
    "player1",
    "player2",
    "player3",
    "player4",
  ];

  List<int> playerClap = [0, 0, 0, 0];

  for (i; i <= 100; i++) {
    // log.info(player[(i - 1) % 4]);

    var playerNum = (i - 1) % 4;
    var answer = "";

    if (i % 30 == 0) {
      chkAhh += 1;
      answer = "ahh";
      // log.info("ahh");
    } else if (i % 3 == 0) {
      chkClap += 1;
      answer = "clap";
      // log.info("clap");
      playerClap[playerNum] += 1;
    } else if (i % 10 == 0) {
      chkRool += 1;
      answer = "rool";
      // log.info("rool");
    } else {
      answer = i.toString();
      // log.info("$i");
    }

    log.info("${player[playerNum]} => $answer");
  }

  var mostClap = 0;
  for (int j = 0; j < playerClap.length - 1; j++) {
    if (playerClap[j] > playerClap[j + 1]) {
      mostClap = j;
    } else if (playerClap[j] < playerClap[j + 1]) {
      mostClap = j + 1;
    } else {
      mostClap = j;
    }
  }

  log.info("clap의 총 갯수 $chkClap");
  log.info("rool의 총 갯수 $chkRool");
  log.info("ahh의 총 갯수 $chkAhh");

  log.info("플레이어 1의 총 clap 갯수 ${playerClap[0]}");
  log.info("플레이어 2의 총 clap 갯수 ${playerClap[1]}");
  log.info("플레이어 3의 총 clap 갯수 ${playerClap[2]}");
  log.info("플레이어 4의 총 clap 갯수 ${playerClap[3]}");

  log.info("가장많이 clap을 한 플레이어 ${player[mostClap]}");

  // log.info("test");
}

/**
 * 👻 INFO 2023-11-28 16:35:11.770 [caller info not available] clap의 총 갯수 30
👻 INFO 2023-11-28 16:35:11.770 [caller info not available] rool의 총 갯수 7
👻 INFO 2023-11-28 16:35:11.770 [caller info not available] ahh의 총 갯수 3
👻 INFO 2023-11-28 16:35:11.771 [caller info not available] 플레이어 1의 총 clap 갯수 8
👻 INFO 2023-11-28 16:35:11.771 [caller info not available] 플레이어 2의 총 clap 갯수 6
👻 INFO 2023-11-28 16:35:11.771 [caller info not available] 플레이어 3의 총 clap 갯수 9
👻 INFO 2023-11-28 16:35:11.771 [caller info not available] 플레이어 4의 총 clap 갯수 7
👻 INFO 2023-11-28 16:35:11.771 [caller info not available] 가장많이 clap을 한 플레이어 player3
 * 
 */
