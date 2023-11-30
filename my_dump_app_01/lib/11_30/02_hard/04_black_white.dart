// ignore_for_file: slash_for_doc_comments

/**
 * ⭐️⭐️ 흑 또는 백

당신은 길에서 주운 오래된 PC에서 이미지를 표시하기 위해 그레이 스케일 이미지를 흑백 화상
으로 변환하기로 했습니다.
그레이 스케일 이미지에서는 255 (흰색)부터 0 (검은 색)의 256 단계로 이미지를 표현합니다.
0에 가까울수록 검은 색, 255에 가까울수록 흰색에 가까운 색입니다.
흑백에서는 단순히 1 (흰색)과 0 (검은 색)의 2 단계로 표현합니다.
따라서 그레이 화소 값을 흑과 백으로 변환해야 합니다. (화소는 이미지의 최소 단위의 점을 나
타냅니다)
즉, 단순히 다음 조건을 사용하여 흑백 이미지로 변환할 수 있습니다.
화소 값이 128 이상 : 1 (흰색)
화소 값이 127 이하 : 0 (검정)
이 변환을 그림으로 나타내면 다음과 같습니다.

255   128   127   0 --> 1   1   0   0

입력 이미지의 크기와 각각의 화소 값이 전달되므로 주어진 조건에서 흑백화 된 결과를 출력하
십시오.

입력
입력은 다음 형식으로 제공됩니다.

  H W
  P_{1, 1} P_{1, 2} ... P_{1, W}
  P_{2, 1} P_{2, 2} ... P_{2, W}
  ...
  P_{H, 1} P_{H, 2} ... P_{H, W}

1 행에 이미지의 가로 세로 크기 H, W가 공백으로 구분하여 부여됩니다.
H 라인 중 i 번째 줄 (1 ≦ i ≦ H)은 W 개의 정수 값이 공백으로 구분하여 부여됩니다.
i 라인의 j 번째 (1 ≦ i ≦ W)의 정수 값 P_ {i, j}는 이미지의 i 행 j 열 번째의 화소 값을 나타
냅니다.
입력은 총 H + 1 행이며, 입력 값 마지막 줄의 끝에 줄 바꿈이 하나 들어갑니다.

출력
주어진 그레이 스케일 이미지를 흑백화 한 결과를 다음 형식으로 출력합니다.

  B_ {1, 1} B_ {1, 2} ... B_ {1, W}
  B_ {2, 1} B_ {2, 2} ... B_ {2, W}
  ...
  B_ {H, 1} B_ {H, 2} ... B_ {H, W}
출력은 H 라인으로 구성됩니다.
i 라인 (1 ≦ i ≦ H)에 W 개의 정수 값 B_ {i, 1} B_ {i, 2}, ..., B_ {i, W}를 공백으로 구분하
여 출력합니다 .
i 라인의 j 번째 (1 ≦ i ≦ W)의 정수 값 B_ {i, j}는 입력 된 이미지의 i 행 j 열 번째 화소 값
을 흑백화 한 결과를 나타냅니다.
H 라인 출력의 마지막에 개행을 넣거나, 불필요한 문자 또는 빈 행을 포함하지 마십시오.

  입력 예1
    3 2
    128 127
    127 128
    128 127
  출력 예1
    1 0
    0 1
    1 0

  입력 예2
    1 1
    0
  출력 예2
    0

 */

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();
void main() {
  int H = 3;
  int W = 2;
  List<List<int>> arry = [];
  arry.add([128, 127]);
  arry.add([127, 128]);
  arry.add([128, 127]);

  log.info(arry);
  // 👻 INFO 2023-11-30 10:09:35.231 [caller info not available] [[128, 127], [127, 128], [128, 127]]

  for (int i = 0; i < arry.length; i++) {
    for (int j = 0; j < arry[i].length; j++) {
      if (arry[i][j] >= 128) {
        arry[i][j] = 1;
      } else {
        arry[i][j] = 0;
      }
    }
  }
  log.info(arry);

// 👻 INFO 2023-11-30 10:11:28.152 [caller info not available] [[128, 127], [127, 128], [128, 127]]
// 👻 INFO 2023-11-30 10:11:28.152 [caller info not available] [[1, 0], [0, 1], [1, 0]]
}