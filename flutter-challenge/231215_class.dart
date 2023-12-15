typedef Definition = String;
typedef ListOfMap = List<Map<String, Definition>>;
typedef ListOfString = List<String>;

class Dictionary {
  Map<String, dynamic> _words = {};

  void add(String term, Definition definition) {
    print('단어 $term 를 추가함.');
    _words[term] = definition;
  }

  Definition get(String term) {
    print('단어의 정의를 리턴함.');
    return _words[term];
  }

  void delete(String term) {
    print('단어를 삭제함.');
    _words.remove(term);
  }

  void update(String term, Definition definition) {
    if (_words.containsKey(term)) {
      print('단어를 업데이트 함.');
      _words[term] = definition;
    } else {
      print('없는 단어 업데이트 불가.');
    }
  }

  void showAll() {
    print('사전 단어를 모두 보여줌.');
    _words.forEach((key, value) {
      print('$key, $value');
    });
  }

  int count() {
    print('사전 단어들의 총 갯수를 리턴함.');
    return _words.length;
  }

  void upsert(String term, Definition definition) {
    print('단어를 업데이트 함. 존재하지 않을시. 이를 추가함. (update + insert = upsert)');
    _words[term] = definition;
  }

  bool exists(String term) {
    print('해당 단어가 사전에 존재하는지 여부를 알려줌.');
    return _words.containsKey(term);
  }

  void bulkAdd(ListOfMap listOfMap) {
    print(
        '다음과 같은 방식으로. 여러개의 단어를 한번에 추가할 수 있게 해줌. [{"term":"김치", "definition":"대박이네~"}, {"term":"아파트", "definition":"비싸네~"}]');
    for (var map in listOfMap) {
      if (map.containsKey('term') && map.containsKey('definition')) {
        add(map['term'] as String, map['definition'] as dynamic);
      }
    }
  }

  void bulkDelete(ListOfString listOfString) {
    print('다음과 같은 방식으로. 여러개의 단어를 한번에 삭제할 수 있게 해줌. ["김치", "아파트"]');
    for (var str in listOfString) {
      delete(str);
    }
  }
}

void main() {
  print('start');

  final dictionary = Dictionary();

  dictionary.add('apple', '사과');
  dictionary.add('banana', '바나나');
  dictionary.add('orange', '오렌지');
  dictionary.add('watermelon', '수박');

  dictionary.get('apple');

  dictionary.delete('orange');

  dictionary.update('banana', '바나나나');

  dictionary.showAll();

  dictionary.count();

  dictionary.upsert('watermelon', '워터멜론');
  dictionary.upsert('melon', '멜론');

  dictionary.showAll();

  print('포도 확인 ${dictionary.exists('grape')}');

  ListOfMap addList = [
    {
      'term': 'strawberry',
      'definition': '딸기',
    },
    {
      'term': 'blueberry',
      'definition': '블루베리',
    },
  ];

  dictionary.bulkAdd(addList);

  dictionary.showAll();

  ListOfString deleteList = ['apple', 'banana', 'blueberry'];
  dictionary.bulkDelete(deleteList);

  dictionary.showAll();

  print('end');
}
