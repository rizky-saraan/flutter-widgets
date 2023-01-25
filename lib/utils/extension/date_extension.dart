import 'package:intl/intl.dart';

extension DateExtension on String {
  String toDateId() {
    DateTime date = DateTime.parse(this);
    return DateFormat("d MMMM yyyy", "id_ID").format(date);
  }
}
