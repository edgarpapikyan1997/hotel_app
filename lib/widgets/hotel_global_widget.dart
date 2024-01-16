import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_test_app/attributes/utils/extensions/extensions.dart';
import 'package:hotel_test_app/models/hotel_model.dart';
import 'package:hotel_test_app/widgets/flexible_widgets/flexible_container.dart';
import 'package:hotel_test_app/widgets/rate_widget.dart';
import '../attributes/themes/app_colors.dart';
import '../models/about_hotel_model.dart';
import 'flexible_widgets/custom_painter_widget.dart';
import 'hotel_properties.dart';
import 'image_carousel.dart';

class HotelGlobalWidget extends StatefulWidget {
  final HotelModel hotelModel;

  const HotelGlobalWidget({super.key, required this.hotelModel});

  @override
  State<HotelGlobalWidget> createState() => _HotelGlobalWidgetState();
}

class _HotelGlobalWidgetState extends State<HotelGlobalWidget> {
  late final AboutHotelModel? aboutHotelModel;

  @override
  void initState() {
    super.initState();
    _loadAboutModel();
  }

  void _loadAboutModel() async {
    try {
      Map<String, dynamic> aboutHotelMap = widget.hotelModel.about_the_hotel;
      aboutHotelModel = AboutHotelModel.fromJson(aboutHotelMap);
    } catch (e) {
      print("Error fetching about hotel data: $e");
    }
  }

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
              ImageCarousel(images: widget.hotelModel.image_urls).paddingOnly(
                bottom: 8,
              ),
              RateWidget(
                rating: widget.hotelModel.rating,
              ).paddingVertical(8),
              Text(
                "${widget.hotelModel.name}",
                style: context.theme.headline8,
              ),
              Text(
                "${widget.hotelModel.adress}",
                style: context.theme.headline2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${"keywords.from".tr()} ${widget.hotelModel.minimal_price} ${"keywords.currency".tr()}",
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
              HotelProperties(aboutHotelModel: aboutHotelModel!)
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
                    context.go('/Room');
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
