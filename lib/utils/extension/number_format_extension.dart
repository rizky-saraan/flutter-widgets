import 'package:intl/intl.dart';

extension NumberFormatExtension on num {
  String toIdr() {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    return currencyFormatter.format(this);
  }
}
