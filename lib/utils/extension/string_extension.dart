import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalized() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this);
  }
}

extension IndonesianDate on String {
  String toIndonesianDate() {
    DateTime dt = DateTime.parse(this);
    return DateFormat("d MMMM yyyy", "id_ID").format(dt);
  }
}
