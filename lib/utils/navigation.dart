import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_relay/trip/home.dart';
import 'package:trip_relay/trip/explore_screen.dart';
import 'package:trip_relay/trip/my_trip_list_screen.dart';

import 'package:trip_relay/utils/constant.dart';

GlobalKey<ScaffoldMessengerState>? scaffoldKey;

class TripsRouter {
  static GoRouter? _router;
  static initialize() {
    final GoRouter router = GoRouter(routes: <RouteBase>[
      GoRoute(
          path: Path.home,
          builder: (context, state) {
            return const HomeScreen();
          }),
      GoRoute(
          path: Path.explore,
          builder: (context, state) {
            return const ExploreScreen();
          }),
      GoRoute(
          path: Path.myTrips,
          builder: (context, state) {
            return const MyTripListScreen();
          })
    ]);

    return _router = router;
  }

  static void nextScreen(String route,
      {Object? extra, bool replace = false, bool go = false}) {
    if (go) {
      _router?.go(route, extra: extra);
    } else if (replace) {
      _router?.replace(route, extra: extra);
    } else {
      _router?.push(route, extra: extra);
    }
  }
}

class TripsScaffold {
  static GlobalKey<ScaffoldMessengerState> getScaffoldKey() {
    if (scaffoldKey != null) {
      return scaffoldKey!;
    }
    scaffoldKey = GlobalKey<ScaffoldMessengerState>();
    return scaffoldKey!;
  }
}
