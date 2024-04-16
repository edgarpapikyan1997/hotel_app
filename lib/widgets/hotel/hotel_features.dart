import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_test_app/attributes/utils/extensions/extensions.dart';
import 'package:hotel_test_app/widgets/flexible_widgets/flexible_container.dart';
import '../attributes/assets.dart';
import '../attributes/themes/app_colors.dart';
import 'flexible_widgets/custom_painter_widget.dart';

class HotelFeatures extends StatelessWidget {
  const HotelFeatures({super.key});

  Widget getHotelFeatures(
      {required Image asset,
      required String title,
      required String secondaryTitle,
      required BuildContext context}) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: FittedBox(
            fit: BoxFit.fill,
            child: asset,
          ),
        ).paddingOnly(left: 15, right: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.theme.headline6,
            ),
            Text(
              secondaryTitle,
              style: context.theme.headline2.grey,
            ),
          ],
        ),
        const Spacer(),
        Assets.arrowRight.png,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlexibleContainer(
          topRightRadius: const Radius.circular(15),
          topLeftRadius: const Radius.circular(15),
          height: 58,
          color: AppColors.whiteSprite,
          radius: 15,
          child: getHotelFeatures(
            context: context,
            asset: Assets.emojiHappy.png,
            title: 'keywords.facilities'.tr(),
            secondaryTitle: 'keywords.necessary'.tr(),
          ),
        ),
        LineWidget(),
        FlexibleContainer(
          height: 58,
          color: AppColors.whiteSprite,
          radius: 15,
          child: getHotelFeatures(
            context: context,
            asset: Assets.tickSquare.png,
            title: 'keywords.whatIncluded'.tr(),
            secondaryTitle: 'keywords.necessary'.tr(),
          ),
        ),
        LineWidget(),
        FlexibleContainer(
          bottomRightRadius: const Radius.circular(15),
          bottomLeftRadius: const Radius.circular(15),
          height: 58,
          color: AppColors.whiteSprite,
          radius: 15,
          child: getHotelFeatures(
            context: context,
            asset: Assets.closeSquare.png,
            title: 'keywords.whatNotIncluded'.tr(),
            secondaryTitle: 'keywords.necessary'.tr(),
          ),
        ),
      ],
    );
  }
}
