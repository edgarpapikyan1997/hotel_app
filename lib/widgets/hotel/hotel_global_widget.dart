import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_test_app/attributes/utils/extensions/extensions.dart';
import 'package:hotel_test_app/models/hotel_model/hotel_model.dart';
import 'package:hotel_test_app/network/repositories/hotel_repository.dart';
import 'package:hotel_test_app/widgets/flexible_widgets/flexible_container.dart';
import 'package:hotel_test_app/widgets/rate_widget.dart';
import '../attributes/themes/app_colors.dart';
import '../models/about_hotel_model/about_hotel_model.dart';
import 'flexible_widgets/custom_painter_widget.dart';
import 'hotel_properties.dart';
import 'image_carousel.dart';

class HotelGlobalWidget extends StatelessWidget {
  final HotelModel hotelModel;
  final AboutHotelModel aboutHotelModel;

  const HotelGlobalWidget(
      {super.key, required this.hotelModel, required this.aboutHotelModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCarousel(images: hotelModel.image_urls).paddingOnly(
                bottom: 8,
              ),
              RateWidget(
                rating: hotelModel.rating,
                ratingName: hotelModel.rating_name,
              ).paddingVertical(8),
              Text(
                "${hotelModel.name}",
                style: context.theme.headline8,
              ),
              Text(
                "${hotelModel.adress}",
                style: context.theme.headline2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${"keywords.from".tr()} ${hotelModel.minimal_price} ${"keywords.currency".tr()}",
                          style: context.theme.headline9)
                      .paddingOnly(right: 8),
                  Text(
                    "keywords.forTour".tr(),
                    style: context.theme.headline3,
                  ),
                ],
              ).paddingVertical(16),
            ],
          ).paddingHorizontal(16),
        ),
        Container(
          width: context.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("keywords.about".tr(), style: context.theme.headline8),
              HotelProperties(aboutHotelModel: aboutHotelModel)
                  .paddingOnly(bottom: 16),
            ],
          ).paddingHorizontal(16),
        ).paddingOnly(top: 8, bottom: 12),
        Column(
          children: [
            LineWidget(),
            Container(
              height: 88,
              width: context.width,
              color: AppColors.white,
              child: Align(
                child: GestureDetector(
                  onTap: () {
                    context.go(
                      '/Room',
                    );
                  },
                  child: FlexibleContainer(
                    height: 48,
                    width: context.width,
                    color: AppColors.lightBlue,
                    unitedRadius: true,
                    radius: 15,
                    paddingBottom: 28,
                    paddingTop: 12,
                    paddingRight: 16,
                    paddingLeft: 16,
                    child: Center(
                        child: Text(
                      'keywords.toRoomChoose'.tr(),
                      style: context.theme.headline4.white,
                    )),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
