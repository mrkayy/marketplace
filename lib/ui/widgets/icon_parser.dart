import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconParserWidget extends StatelessWidget {
  const IconParserWidget(
      {super.key, this.iconHeight, this.iconWidth, required this.image});

  final double? iconHeight;
  final double? iconWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: iconHeight?.h ?? 28.0.h,
      width: iconWidth?.w ?? 28.0.w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitHeight,
            alignment: Alignment.center),
      ),
    );
  }
}
