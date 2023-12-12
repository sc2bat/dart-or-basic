import 'dart:convert';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  const String json = '''{
    "collectionChartDataList": [
      {
        "collectionName": "collectionName",
        "collectionSalePrice": null
      },
      {
        "collectionName": "collectionName",
        "collectionSalePrice": [
          {
            "price": 59.75,
            "cvtDatetime": "2023-03-26T08:08:35"
          },
          {
            "price": 60.00,
            "cvtDatetime": "2023-03-26T08:08:45"
          }
        ]
      }
    ]
  }''';

  Map<String, dynamic> decodingJson = jsonDecode(json);

  log.info(decodingJson);
}
