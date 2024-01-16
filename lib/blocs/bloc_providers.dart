import 'package:flutter_bloc/flutter_bloc.dart';
import 'carousel_blocs/carousel_bloc.dart';

class AppBlocProviders {
  static get allBlocProviders => [
    BlocProvider(
      create: (context) => CarouselBloc(),
    ),

  ];
}
