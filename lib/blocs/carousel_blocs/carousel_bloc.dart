import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'carousel_event.dart';

part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc()
      : super(const CarouselStateIndex(
          dotCurrentIndex: 0,
          colorOpacity: 1.0,
        )) {
    on<CarouselEventChanged>((event, emit) {
      var indexState = (state as CarouselStateIndex).dotCurrentIndex;
      var opacityState = (state as CarouselStateIndex).colorOpacity;
      indexState = event.index;
      opacityState = event.colorOpacity;
      emit(CarouselStateIndex(
        dotCurrentIndex: indexState,
        colorOpacity: opacityState,
      ));
    });
  }
}
