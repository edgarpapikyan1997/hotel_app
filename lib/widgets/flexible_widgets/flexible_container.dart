import 'package:flutter/cupertino.dart';
import 'package:hotel_test_app/attributes/themes/app_colors.dart';
import 'package:hotel_test_app/attributes/utils/extensions/widget_extension.dart';

/// THIS CONTAINER CAN BE USED AS FLEXIBLE BUTTON, CONTAINER OR FIELD WIDGET
/// REDUCING CODE DUPLICATION

class FlexibleContainer extends StatelessWidget {
  final bool? unitedRadius;
  final Widget? child;
  final double? height;
  final double? width;
  final double? radius;
  final Radius? bottomLeftRadius;
  final Radius? bottomRightRadius;
  final Radius? topLeftRadius;
  final Radius? topRightRadius;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final Color? color;

  const FlexibleContainer(
      {super.key,
      this.child,
      this.height,
      this.width,
      this.radius,
      this.color,
      this.paddingLeft,
      this.paddingRight,
      this.paddingTop,
      this.paddingBottom,
      this.bottomLeftRadius,
      this.bottomRightRadius,
      this.topLeftRadius,
      this.topRightRadius,
      this.unitedRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color ?? AppColors.darkGrey,
          borderRadius: unitedRadius == true && radius != null
              ? BorderRadius.circular(15)
              : BorderRadius.only(
                  bottomRight: bottomRightRadius ?? Radius.zero,
                  bottomLeft: bottomLeftRadius ?? Radius.zero,
                  topLeft: topLeftRadius ?? Radius.zero,
                  topRight: topRightRadius ?? Radius.zero,
                )),
      child: child,
    ).paddingOnly(
        left: paddingLeft ?? 0,
        right: paddingRight ?? 0,
        top: paddingTop ?? 0,
        bottom: paddingBottom ?? 0);
  }
}
