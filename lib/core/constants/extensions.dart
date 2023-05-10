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
