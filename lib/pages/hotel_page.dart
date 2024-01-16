import 'package:flutter/material.dart';
import 'package:hotel_test_app/attributes/utils/extensions/extensions.dart';
import 'package:hotel_test_app/widgets/hotel_global_widget.dart';
import '../attributes/themes/app_colors.dart';
import '../models/hotel_model.dart';
import '../network/repositories/hotel_repository.dart';
import 'package:dio/dio.dart';
import '../network/retrofit/rest_client.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  final HotelRepository _hotelRepository = HotelRepository(RestClient(Dio()));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 50.5, bottom: 34),
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteSmock,
        appBar: AppBar(
          title: Center(
              child: Text(
            'keywords.hotel',
            style: context.theme.headline7,
          ).tr()),
        ),
        body: FutureBuilder<HotelModel>(
          future: _hotelRepository.getHotel(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.orange,
              ));
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final hotelModel = snapshot.data;
              if (hotelModel == null || hotelModel.image_urls == null) {
                return const Text('Error: Invalid data received');
              }
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                child: Column(
                  children: [
                    HotelGlobalWidget(hotelModel: hotelModel),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
