import 'package:flutter/material.dart';
import 'package:trip_relay/trip/trip_relay_app_bar.dart';
import 'package:trip_relay/trip/widgets/home_search_section.dart';
import 'package:trip_relay/trip/widgets/offer_banner_section.dart';
import 'package:trip_relay/trip/widgets/popular_destinations_section.dart';
import 'package:trip_relay/trip/widgets/upcoming_trips_section.dart';
import 'package:trip_relay/utils/constant.dart';
import 'package:trip_relay/trip/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const TripRelayAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeSearchSection(colorScheme: colorScheme),
            const SizedBox(height: 16),
            const OfferBannerSection(),
            const SizedBox(height: 20),
            UpcomingTripsSection(colorScheme: colorScheme),
            const SizedBox(height: 20),
            const PopularDestinationsSection(),
          ],
        ),
      ),
      bottomNavigationBar:
          const BottomNavigationWidget(currentScreen: Path.home),
    );
  }
}
