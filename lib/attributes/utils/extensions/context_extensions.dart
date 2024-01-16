import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_fonts.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get media => MediaQuery.of(this);

  double get height => media.size.height;

  double get bodyHeight => height - 100;

  double get width => media.size.width;

  double get topPadding => media.padding.top;

  double get bottomPadding => media.padding.bottom;

  bool get isDarkMode => media.platformBrightness == Brightness.dark;
}

extension ThemeDataHelper on ThemeData {
  TextStyle get headline1 => const TextStyle(
    color: AppColors.black,
    fontFamily: FontFamily.SFProDisplay,
    fontSize: 14,
    height: 1.50,
    fontWeight: FontWeight.w400
  );

  TextStyle get headline2 => const TextStyle(
    color: AppColors.lightBlue,
    fontFamily: FontFamily.SFProDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.2,
  );

  TextStyle get headline3 => const TextStyle(
    color: AppColors.grey,
    fontFamily: FontFamily.SFProDisplay,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  TextStyle get headline4 => const TextStyle(
    color: AppColors.grey,
    fontFamily: FontFamily.SFProDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.24,
  );

  TextStyle get headline5 => const TextStyle(
    fontFamily: FontFamily.SFProDisplay,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.36,
  );

  TextStyle get headline6 => const TextStyle(
    fontFamily: FontFamily.SFProDisplay,
    color: AppColors.darkGrey,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.2,
  );

  TextStyle get headline7 => const TextStyle(
    fontFamily: FontFamily.SFProDisplay,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 18,
    height: 1.21,
  );

  TextStyle get headline8 => const TextStyle(
    fontFamily: FontFamily.SFProDisplay,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 22,
  );

  TextStyle get headline9 => const TextStyle(
    fontFamily: FontFamily.SFProDisplay,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontSize: 30,
    height: 1,
  );

  // TextStyle get subtitle1 => textTheme.titleMedium!;
  //
  // TextStyle get subtitle2 => textTheme.titleSmall!;
  //
  // TextStyle get subtitle3 => textTheme.titleSmall!
  //     .copyWith(
  //   fontSize: 14,
  //   letterSpacing: -0.01,
  // )
  //     .medium;
  //
  // TextStyle get button1 => textTheme.labelLarge!;
  //
  // TextStyle get button2 => textTheme.labelLarge!.copyWith(
  //   fontSize: 16,
  //   height: 1.25,
  // );
  //
  // TextStyle get button3 => textTheme.labelLarge!.copyWith(
  //   fontWeight: FontWeight.w500,
  //   fontSize: 16,
  //   height: 1,
  // );
  //
  // TextStyle get button4 => textTheme.labelLarge!.copyWith(
  //   fontWeight: FontWeight.w500,
  //   fontSize: 14,
  //   height: 1,
  // );

  TextStyle get bodyText1 => textTheme.bodyLarge!;

  TextStyle get bodyText2 => textTheme.bodyMedium!;

  TextStyle get bodyText3 => textTheme.bodyMedium!.bold;

  TextStyle get body17 => textTheme.bodyMedium!.size(17);

  TextStyle get caption1 => textTheme.bodySmall!;

  TextStyle get caption2 => textTheme.bodySmall!.bold;

  TextStyle get overline => textTheme.labelSmall!;

  ButtonStyle get elevatedButtonStyle => elevatedButtonTheme.style!;

  ButtonStyle get textButtonStyle => textButtonTheme.style!;
}

extension ElevatedButtonHelper on ButtonStyle {
  ButtonStyle buttonColor(Color color) => copyWith(
    shadowColor: MaterialStateProperty.all(color),
    foregroundColor: MaterialStateProperty.all(AppColors.white),
    backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
        return states.contains(MaterialState.disabled)
            ? color.withOpacity(0.5)
            : color;
      },
    ),
  );

  ButtonStyle elevationSize(double elevation) {
    return copyWith(
      elevation: MaterialStateProperty.all(
        elevation,
      ),
    );
  }

  ButtonStyle paddingAll(double padding) {
    return copyWith(
      padding: MaterialStateProperty.all(
        EdgeInsets.all(padding),
      ),
    );
  }

  ButtonStyle paddingVertical(double padding) {
    return copyWith(
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(vertical: padding),
      ),
    );
  }

  ButtonStyle get removePaddings => copyWith(
    padding: MaterialStateProperty.all(
      EdgeInsets.zero,
    ),
  );

  ButtonStyle textColor(
      Color color,
      ) {
    return copyWith(
      foregroundColor: MaterialStateProperty.all(
        color,
      ),
    );
  }
}

// usage example: context.h3.regular.white
extension TextStyleHelpers on TextStyle {
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get grey => copyWith(color: AppColors.grey);
  TextStyle get darkGrey => copyWith(color: AppColors.darkGrey);
  TextStyle get black => copyWith(color: AppColors.black);
  TextStyle get lightBlue => copyWith(color: AppColors.lightBlue);
  TextStyle get orange => copyWith(color: AppColors.orange);


  TextStyle size([double? fontSize]) => copyWith(fontSize: fontSize);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w600);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

}

// extension GlobalKeyEx on GlobalKey {
//   Rect? get globalPaintBounds {
//     final renderObject = currentContext?.findRenderObject();
//     final translation = renderObject?.getTransformTo(null).getTranslation();
//
//     return translation != null && renderObject?.paintBounds != null
//         ? renderObject!.paintBounds.shift(Offset(translation.x, translation.y))
//         : null;
//   }
// }
