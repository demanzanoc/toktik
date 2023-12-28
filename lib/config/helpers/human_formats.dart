import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumber(double number) =>
      NumberFormat.compactCurrency(decimalDigits: 0, symbol: '').format(number);
}
