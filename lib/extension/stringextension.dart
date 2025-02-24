
extension StringExtension on String{
  bool get isvalidDebit => RegExp(r'^\d{12}$').hasMatch(this);

  String get formattedDebit {
    return replaceAllMapped(RegExp(r'(\d{4})(?=\d)'), (match) => '${match[1]} ');
  }
}

