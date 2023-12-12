import 'dart:convert';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// "price": 59.75,
//             "cvtDatetime": "2023-03-26T08:08:35"
class CollectionSalePrice {
  final double _price;
  final DateTime _cvtDatetime;

  CollectionSalePrice({
    required double price,
    required DateTime cvtDatetime,
  })  : _cvtDatetime = cvtDatetime,
        _price = price;

  CollectionSalePrice.fromJson(Map<String, dynamic> json)
      : _price = json['price'],
        _cvtDatetime = json['cvtDatetime'];

  Map<String, dynamic> toJson() => {
        'price': _price,
        'cvtDatetime': _cvtDatetime,
      };
}

class Collection {
  final String _collectionName;
  final List<CollectionSalePrice>? _collectionSalePrice;

  Collection({
    required String collectionName,
    required List<CollectionSalePrice> collectionSalePrice,
  })  : _collectionName = collectionName,
        _collectionSalePrice = collectionSalePrice;

  Collection.fromJson(Map<String, dynamic> json)
      : _collectionName = json['collectionName'],
        _collectionSalePrice = json['collectionSalePrice'];

  Map<String, dynamic> toJson() => {
        'collectionName': _collectionName,
        'collectionSalePrice': _collectionSalePrice,
      };
}

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

  // log.info(decodingJson);

  log.info(Collection.fromJson(decodingJson));
}
