import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  String? name;

  String age = '25';

  log.info(name?.length);
  if (name != null) {
    log.info(name.length);
  }
  log.info(age.length);

  //👻 INFO 2023-11-29 15:44:58.194 [caller info not available] null
  //👻 INFO 2023-11-29 15:44:58.194 [caller info not available] 2
}
