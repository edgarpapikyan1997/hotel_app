part of 'carousel_bloc.dart';

abstract class CarouselEvent extends Equatable {
  const CarouselEvent();

  @override
  List<Object?> get props => [];
}

class CarouselEventChanged extends CarouselEvent {
  final int index;
  final double colorOpacity;

  const CarouselEventChanged({required this.index, required this.colorOpacity});

  @override
  List<Object?> get props => [index, colorOpacity];
}