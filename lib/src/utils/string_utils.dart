class StringUtils {
  ///
  /// Capitalize the given string [s]. If [allWords] is set to true, it will capitalize all words within the given string [s].
  ///
  /// The string [s] is there fore splitted by " " (space).
  ///
  /// Example :
  ///
  /// * [s] = "world" => World
  /// * [s] = "WORLD" => World
  /// * [s] = "the quick lazy fox"  => The quick lazy fox
  /// * [s] = "the quick lazy fox" and [allWords] = true => The Quick Lazy Fox
  ///
  /// Source:
  ///
  /// https://github.com/Ephenodrom/Dart-Basic-Utils/blob/master/lib/src/StringUtils.dart
  ///
  static String capitalize(String s, {bool allWords = false}) {
    if (allWords) {
      var words = s.split(' ');
      var capitalized = [];
      for (var w in words) {
        capitalized.add(capitalize(w));
      }
      return capitalized.join(' ');
    } else {
      return s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase();
    }
  }
}
