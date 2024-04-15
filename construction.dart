const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  Point.origin() : x = xOrigin, y = yOrigin;

  @override
  String toString() {
    return 'Point($x, $y)';
  }
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print('$name: $msg');
  }
}

void main() {
  // 创建一个原点Point对象
  var originPoint = Point.origin();
  print('Origin Point: $originPoint');

  // 创建一个非原点Point对象
  var customPoint = Point(5, 10);
  print('Custom Point: $customPoint');

  // 创建一个Logger对象
  var logger = Logger('MainLogger');
  logger.log('This is a log message.');

  // 尝试静音Logger
  logger.mute = true;
  logger.log('This message should not be printed.');

  // 使用fromJson工厂方法创建Logger
  var jsonLogger = Logger.fromJson({'name': 'JsonLogger'});
  jsonLogger.log('Created from JSON.');

  // 演示Logger的单例行为
  var anotherLogger = Logger('MainLogger');
  print('Another Logger is the same as the first: ${anotherLogger === logger}');
}