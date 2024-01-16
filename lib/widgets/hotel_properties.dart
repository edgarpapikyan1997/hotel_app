import 'package:flutter/material.dart';
import 'package:hotel_test_app/attributes/utils/extensions/context_extensions.dart';
import 'package:hotel_test_app/attributes/utils/extensions/widget_extension.dart';

import '../attributes/themes/app_colors.dart';
import '../models/about_hotel_model.dart';
import 'flexible_widgets/flexible_container.dart';
import 'hotel_features.dart';

class HotelProperties extends StatelessWidget {
  final AboutHotelModel? aboutHotelModel;

  const HotelProperties({required this.aboutHotelModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children:  aboutHotelModel!.peculiarities
                  ?.map((property) =>
              FlexibleContainer(
                        paddingLeft: 8,
                        paddingRight: 8,
                        paddingBottom: 8,
                        paddingTop: 8,
                        bottomLeftRadius: const Radius.circular(5),
                        bottomRightRadius: const Radius.circular(5),
                        topLeftRadius: const Radius.circular(5),
                        topRightRadius: const Radius.circular(5),
                        color: AppColors.whiteSprite,
                        child: Text(
                          property.toString(),
                          style: context.theme.headline4,
                        ).paddingSymmetric(vertical: 5, horizontal: 10),
                      ))
                  .toList() ??
              [],
        ),
        Text(
          '${aboutHotelModel!.description}',
          style: context.theme.headline5,
        ).paddingOnly(top: 2, bottom: 16),
        const HotelFeatures(),
      ],
    );
  }
}
