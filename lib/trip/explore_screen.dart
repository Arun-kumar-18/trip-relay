import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trip_relay/provider/tripProvider/trip_provider.dart';
import 'package:trip_relay/trip/trip_relay_app_bar.dart';
import 'package:trip_relay/trip/widgets/bottom_navigation_bar.dart';
import 'package:trip_relay/trip/widgets/explore_content_widgets.dart';
import 'package:trip_relay/utils/constant.dart';

class ExploreScreen extends ConsumerStatefulWidget {
  const ExploreScreen({super.key});

  @override
  ConsumerState<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends ConsumerState<ExploreScreen> {
  String? _selectedLocation;

  static const List<String> _locations = [
    'Delhi',
    'Mumbai',
    'Jaipur',
    'Goa',
    'Bangalore',
    'Mysore',
    'Ooty',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _promptForLocation(force: true);
    });
  }

  Future<void> _promptForLocation({bool force = false}) async {
    final String? picked = await showModalBottomSheet<String>(
      context: context,
      isDismissible: !force,
      enableDrag: !force,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (sheetContext) {
        return SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose your location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Tourist places, restaurants, and hotels will update based on your city.',
                  style: TextStyle(color: Color(0xFF64748B)),
                ),
                const SizedBox(height: 14),
                ..._locations.map(
                  (city) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.location_city_rounded),
                    title: Text(city),
                    onTap: () {
                      Navigator.of(sheetContext).pop(city);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
      },
    );

    if (!mounted) {
      return;
    }

    if (picked == null) {
      if (_selectedLocation == null && force) {
        _promptForLocation(force: true);
      }
      return;
    }

    setState(() {
      _selectedLocation = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentLocation = _selectedLocation;
    final data = currentLocation == null
        ? null
        : ref.watch(locationDataProvider(currentLocation));

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F6),
      appBar: const TripRelayAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: data == null
                  ? const [
                      SizedBox(height: 80),
                      Center(
                        child:
                            CircularProgressIndicator(color: Color(0xFFEC5B13)),
                      ),
                    ]
                  : data.when(data: (locationData) {
                      return [
                        ExploreLocationRow(
                          location: currentLocation,
                          onChange: () => _promptForLocation(),
                        ),
                        ExploreSearchSection(hintText: locationData.searchHint),
                        const ExploreQuickFilters(),
                        const SizedBox(height: 8),
                        NearbyRestaurantsSection(
                            restaurants: locationData.restaurants),
                        const SizedBox(height: 8),
                        PopularSpotsSection(spots: locationData.spots),
                        const SizedBox(height: 8),
                        FeaturedStaysSection(stays: locationData.stays),
                        MapPreviewSection(
                          imageUrl: locationData.mapImageUrl,
                          location: currentLocation!,
                        ),
                      ];
                    }, error: (e, st) {
                      return [
                        Center(
                          child: Text(
                            'Failed to load data. Please try again.',
                            style: TextStyle(color: Colors.red[600]),
                          ),
                        ),
                      ];
                    }, loading: () {
                      return [
                        const Center(
                          child: CircularProgressIndicator(
                              color: Color(0xFFEC5B13)),
                        ),
                      ];
                    })),
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(
        currentScreen: Path.explore,
      ),
    );
  }
}
