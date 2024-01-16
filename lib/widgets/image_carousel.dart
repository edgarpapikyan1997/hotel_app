import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/attributes/utils/extensions/context_extensions.dart';
import 'package:hotel_test_app/attributes/utils/extensions/extensions.dart';
import 'package:hotel_test_app/blocs/carousel_blocs/carousel_bloc.dart';

import 'dot_indicator.dart';

class ImageCarousel extends StatefulWidget {
  final List<String>? images;

  const ImageCarousel({
    super.key,
    required this.images,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late final PageController pageController = PageController();
  int activePage = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarouselBloc, CarouselState>(builder: (context, state) {
      int indexState = (state as CarouselStateIndex).dotCurrentIndex;
      double opacityState = (state).colorOpacity;
      return SizedBox(
        width: context.width,
        height: 257,
        child: Stack(
          children: [
            PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: widget.images?.length ?? 0,
              pageSnapping: true,
              controller: pageController,
              onPageChanged: (page) {
                // activePage = page;
                indexState = page;
                BlocProvider.of<CarouselBloc>(context).add(CarouselEventChanged(
                    index: indexState, colorOpacity: opacityState));
              },
              itemBuilder: (context, position) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: widget.images?[position] == null
                          ? const CircularProgressIndicator()
                          : Image.network(widget.images![position])),
                );
              },
            ),
            Positioned(
              bottom: 8,
              right: context.width / 2.5,
              child: DotIndicator(length: widget.images?.length ?? 0),
            )
          ],
        ),
      );
    });
  }
}
