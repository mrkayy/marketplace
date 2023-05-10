import 'package:code_test/core/constants/enums.dart';

class ShippingInformation {
  final int? fee;
  final ShippingType? type;
  final DateTime? arrivalDate;
  final String? from;

  ShippingInformation({this.fee, this.type, this.arrivalDate, this.from});
}
