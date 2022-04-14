import 'package:intl/intl.dart';

class DateTimeFormat {
  static const fullDateTime = 'dd/MM/yyyy HH:mm:ss';

  static String? format({
    DateTime? dateTime,
    required String format,
  }) {
    String? result;
    if (dateTime != null) {
      result = DateFormat(format).format(dateTime);
    }

    return result;
  }

  static DateTime? parse({
    required String? dateTime,
    required String format,
    bool utc = true,
  }) {
    return dateTime == null ? null : DateFormat(format).parse(dateTime, utc);
  }

  static DateTime parseMillis(
    int millis, {
    bool utc = true,
  }) =>
      DateTime.fromMillisecondsSinceEpoch(
        millis,
        isUtc: utc,
      );
}
