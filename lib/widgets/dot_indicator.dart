import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/attributes/themes/app_colors.dart';
import 'package:hotel_test_app/blocs/carousel_blocs/carousel_bloc.dart';

class DotIndicator extends StatelessWidget {
  final int length;

  const DotIndicator({Key? key, required this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarouselBloc, CarouselState>(
      builder: (context, state) {
        int indexState = (state as CarouselStateIndex).dotCurrentIndex;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.white,
          ),
          width: 75,
          height: 17,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(length, (i) {
              double distance = (i - indexState).abs().toDouble();
              double opacity = 0.5 - distance / (3 * length); // Adjust the factor
              // Ensure opacity is within the valid range [0.0, 1.0]
              opacity = opacity.clamp(0.0, 1.0);
              return dot(opacity);
            }).toList().reversed.toList(),
          ),
        );
      },
    );
  }
}

Widget dot(double opacity) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.darkGrey.withOpacity(opacity),
      borderRadius: BorderRadius.circular(15),
    ),
    height: 7,
    width: 7,
    margin: EdgeInsets.symmetric(horizontal: 5),
  );
}
