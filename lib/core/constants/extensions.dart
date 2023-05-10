import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension WidgetSpacing on double {
  /// Adds an empty spacing on the horizontal axis of the a widget tree
  SizedBox get spacingW => SizedBox(width: this);

  /// Adds an empty spacing on the vertical axis of the a widget tree
  SizedBox get spacingH => SizedBox(height: this);
}

extension DateTimeConverter on DateTime {
  String get convertToQueryDate => DateFormat('yyyy-MM-dd').format(this);

  String get convertToAppDate => DateFormat('MMMM d, y', 'en_US').format(this);
}

extension MoneyFormatter on double {
  String get formatMoney {
    final formatCurrency = NumberFormat.currency(locale: 'en_US', symbol: "\$");
    var f = formatCurrency.format(this);

    return f;
  }
}

extension ConvertTitleCase on String {
  String  get toTitleCase {
  if (this.isEmpty) {
    return this; // Return empty string if input is empty
  }

  List<String> words = this.split(' ');
  List<String> capitalizedWords = [];

  for (String word in words) {
    if (word.isNotEmpty) {
      String firstChar = word.substring(0, 1).toUpperCase();
      String remainingChars = word.substring(1).toLowerCase();
      String capitalizedWord = firstChar + remainingChars;
      capitalizedWords.add(capitalizedWord);
    }
  }

  return capitalizedWords.join(' ');
}

}
