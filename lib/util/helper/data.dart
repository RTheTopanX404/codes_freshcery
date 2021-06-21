class DataUtil {
  static bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    try {
      return num.parse(s) != null;
    } catch (e) {}
    return false;
  }
}
