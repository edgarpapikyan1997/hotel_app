import 'package:go_router/go_router.dart';
import 'package:hotel_test_app/pages/room_page.dart';

import '../../pages/hotel_page.dart';

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HotelPage(),
      ),
      GoRoute(
        path: '/Room',
        builder: (context, state) => const RoomPage(),
      ),
      GoRoute(
        path: '/Order',
        builder: (context, state) => const HotelPage(),
      ),
      GoRoute(
        path: '/Done',
        builder: (context, state) => const HotelPage(),
      ),

    ],
  );