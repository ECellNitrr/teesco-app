import 'package:meta/meta.dart';
import 'package:logger/logger.dart';

/// Wrapper for [Logger] class
class Log {
  static Logger _logger = Logger(
    filter: null,
    output: null,
    printer: PrettyPrinter(printTime: true),
  );

  Log._();
  
  /// Log a message of level {verbose}
  static void v({@required String tag, @required String message}) =>
      _logger.v("[$tag]: $message");

  /// Log a message of level {debug}
  static void d({@required String tag, @required String message}) =>
      _logger.d("[$tag]: $message");

  /// Log a message of level {info}
  static void i({@required String tag, @required String message}) =>
      _logger.i("[$tag]: $message");

  /// Log a message of level {warning}
  static void w({@required String tag, @required String message}) =>
      _logger.w("[$tag]: $message");

  /// Log a message of level {error}
  static void e({@required String tag, @required String message}) =>
      _logger.e("[$tag]: $message");

  /// Log a message of level {severe}
  static void s({@required String tag, @required String message}) =>
      _logger.wtf("[$tag]: $message");
}
