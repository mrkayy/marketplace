import 'package:code_test/core/constants/enums.dart';

class Ratings {
  final double? totalPoints;
  final double? totalStars;
  final List<PointsToStar>? metric;

  Ratings({this.totalPoints, this.totalStars, this.metric});
}

class PointsToStar {
  final int? points;
  final Stars? stars;
  PointsToStar({this.points, this.stars});
}
