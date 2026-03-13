import 'package:flutter/material.dart';
import 'package:trip_relay/trip/widgets/page_transitions_builder_widget.dart';
import 'package:trip_relay/utils/navigation.dart';

void main() {
  runApp(const TripRelay());
}

class TripRelay extends StatelessWidget {
  const TripRelay({super.key});

  static const Color _primaryBlue = Color(0xFF0A84FF);
  static const Color _tealAccent = Color(0xFF00BFA6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        scaffoldMessengerKey: TripsScaffold.getScaffoldKey(),
        routerConfig: TripsRouter.initialize(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: _primaryBlue,
            primary: _primaryBlue,
            secondary: _tealAccent,
            brightness: Brightness.light,
          ),
          scaffoldBackgroundColor: const Color(0xFFF6FAFD),
          useMaterial3: true,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.iOS: NoAnimationPageTransitionsBuilder(),
              TargetPlatform.android: NoAnimationPageTransitionsBuilder(),
            },
          ),
        ));
  }
}
