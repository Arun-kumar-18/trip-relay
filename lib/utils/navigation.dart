import 'package:go_router/go_router.dart';
import 'package:trip_relay/trip/home.dart';
import 'package:trip_relay/utils/constant.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: Path.home,
      builder: (context, state) {
        return const HomeScreen();
      })
]);
