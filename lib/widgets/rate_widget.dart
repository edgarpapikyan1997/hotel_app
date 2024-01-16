import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_test_app/attributes/utils/extensions/context_extensions.dart';
import 'package:hotel_test_app/attributes/utils/extensions/widget_extension.dart';

import '../attributes/assets.dart';
import '../attributes/themes/app_colors.dart';

class RateWidget extends StatelessWidget {
  final int? rating;
  final String? ratingName;

  const RateWidget({super.key, this.rating, this.ratingName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.lightOrange.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15, width: 15, child: Assets.rateStar.png)
              .paddingOnly(right: 2),
          Text(
            "${rating ?? 0}",
            style: context.theme.headline4.orange,
          ).paddingOnly(right: 2),
          Text(
            "${rating == null || ratingName == null ? "keywords.noInfo".tr() : ratingName}",
            style: context.theme.headline4.orange,
          ).paddingOnly(right: 2),
        ],
      ),
    );
  }
}
