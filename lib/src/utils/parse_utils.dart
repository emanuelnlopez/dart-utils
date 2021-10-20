import 'package:logging/logging.dart';

class ParseUtils {
  static final Logger _logger = Logger('ParseUtils');

  static bool parseBool(dynamic value) {
    var result = false;

    result = result || value == true;
    result = result || parseInt(value) == 1;
    if (result != true && value is String) {
      var lower = value.toLowerCase();
      result = result || lower == 'true';
      result = result || lower == 'yes';
    }

    return result;
  }

  static double? parseDouble(dynamic value) {
    double? result;
    try {
      if (value is String) {
        result = double.tryParse(value);
      } else if (value is double) {
        result = value;
      } else if (value is int) {
        result = value.toDouble();
      }
    } catch (e, stack) {
      _logger.finest('Error parsing: $value', e, stack);
    }

    return result;
  }

  static int? parseInt(dynamic value) => parseDouble(value)?.toInt();
}
