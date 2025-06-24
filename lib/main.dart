import 'package:flutter/material.dart';
import 'package:trip_relay/utils/navigation.dart';

void main() {
  runApp(const TripRelay());
}

class TripRelay extends StatelessWidget {
  const TripRelay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, primary: const Color(0xfffcd548)),
        useMaterial3: true,
      ),
    );
  }
}
