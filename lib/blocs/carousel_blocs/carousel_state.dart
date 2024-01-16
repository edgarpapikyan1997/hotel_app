part of 'carousel_bloc.dart';

abstract class CarouselState extends Equatable {
  const CarouselState();

  @override
  List<Object> get props => [];
}

class CarouselStateIndex extends CarouselState {
  final int dotCurrentIndex;
  final double colorOpacity;

  @override
  List<Object> get props => [dotCurrentIndex, colorOpacity];

  const CarouselStateIndex(
      {required this.dotCurrentIndex, required this.colorOpacity});
}



