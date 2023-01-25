extension ParseExtension on String {
  int toInt() => int.parse(this);

  int? toIntOrNull() => int.tryParse(trim());

  double toDoubleOrZero() => double.tryParse(trim()) ?? 0.0;
}
