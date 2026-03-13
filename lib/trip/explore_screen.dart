import 'package:flutter/material.dart';
import 'package:trip_relay/trip/trip_relay_app_bar.dart';
import 'package:trip_relay/trip/widgets/bottom_navigation_bar.dart';
import 'package:trip_relay/trip/widgets/explore_content_widgets.dart';
import 'package:trip_relay/utils/constant.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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

  final Map<String, ExploreLocationData> _dataByLocation = {
    'Delhi': const ExploreLocationData(
      searchHint: 'Search forts, markets, food streets, or stays',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1514933651103-005eec06c04b?auto=format&fit=crop&w=1200&q=80',
          title: 'Chandni Chowk Bites',
          subtitle: 'Mughlai • Budget • 0.8 km',
          rating: '4.6',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1559339352-11d035aa65de?auto=format&fit=crop&w=1200&q=80',
          title: 'Connaught Curry House',
          subtitle: 'North Indian • Premium • 1.4 km',
          rating: '4.7',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1524492412937-b28074a5d7da?auto=format&fit=crop&w=1400&q=80',
          title: 'Red Fort',
          location: 'Old Delhi',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1587474260584-136574528ed5?auto=format&fit=crop&w=1400&q=80',
          title: 'India Gate',
          location: 'New Delhi',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=1400&q=80',
          title: 'Imperial Heritage Stay',
          district: 'Central Delhi',
          price: '145/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Free WiFi',
          amenityTwoIcon: Icons.wifi,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?auto=format&fit=crop&w=1400&q=80',
          title: 'Rajpath Residency',
          district: 'Connaught Place',
          price: '119/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Pool',
          amenityTwoIcon: Icons.pool_rounded,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1598091383021-15ddea10925d?auto=format&fit=crop&w=1400&q=80',
    ),
    'Mumbai': const ExploreLocationData(
      searchHint: 'Search beaches, cafes, sea views, or hotels',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?auto=format&fit=crop&w=1200&q=80',
          title: 'Marine Spice Deck',
          subtitle: 'Coastal • Budget • 0.7 km',
          rating: '4.5',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=1200&q=80',
          title: 'Bandra Bistro',
          subtitle: 'Fusion • Premium • 1.2 km',
          rating: '4.7',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1570168007204-dfb528c6958f?auto=format&fit=crop&w=1400&q=80',
          title: 'Gateway of India',
          location: 'Colaba, Mumbai',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1595658658481-d53d3f999875?auto=format&fit=crop&w=1400&q=80',
          title: 'Marine Drive',
          location: 'South Mumbai',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?auto=format&fit=crop&w=1400&q=80',
          title: 'Arabian Sea View Hotel',
          district: 'Nariman Point',
          price: '179/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Sea View',
          amenityTwoIcon: Icons.waves_rounded,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1522798514-97ceb8c4f1c8?auto=format&fit=crop&w=1400&q=80',
          title: 'Juhu Beach Residency',
          district: 'Juhu',
          price: '139/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Pool',
          amenityTwoIcon: Icons.pool_rounded,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=1400&q=80',
    ),
    'Jaipur': const ExploreLocationData(
      searchHint: 'Search forts, palaces, thali spots, or stays',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1559329007-40df8a9345d8?auto=format&fit=crop&w=1200&q=80',
          title: 'Pink City Thali House',
          subtitle: 'Rajasthani • Premium • 0.9 km',
          rating: '4.8',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1481833761820-0509d3217039?auto=format&fit=crop&w=1200&q=80',
          title: 'Amber Courtyard Cafe',
          subtitle: 'Indian • Premium • 1.5 km',
          rating: '4.6',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1477587458883-47145ed94245?auto=format&fit=crop&w=1400&q=80',
          title: 'Hawa Mahal',
          location: 'Jaipur, Rajasthan',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1599661046289-e31897846e41?auto=format&fit=crop&w=1400&q=80',
          title: 'Amber Fort',
          location: 'Amer, Jaipur',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?auto=format&fit=crop&w=1400&q=80',
          title: 'Royal Haveli Retreat',
          district: 'Bani Park',
          price: '129/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Breakfast',
          amenityTwoIcon: Icons.free_breakfast_rounded,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=1400&q=80',
          title: 'Fort View Residency',
          district: 'Civil Lines',
          price: '109/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Pool',
          amenityTwoIcon: Icons.pool_rounded,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1506461883276-594a12b11cf3?auto=format&fit=crop&w=1400&q=80',
    ),
    'Goa': const ExploreLocationData(
      searchHint: 'Search beaches, shacks, nightlife, or resorts',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?auto=format&fit=crop&w=1200&q=80',
          title: 'Sunset Shack Grill',
          subtitle: 'Seafood • Premium • 0.4 km',
          rating: '4.7',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=1200&q=80',
          title: 'Calangute Curry Bowl',
          subtitle: 'Goan • Premium • 1.0 km',
          rating: '4.6',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?auto=format&fit=crop&w=1400&q=80',
          title: 'Baga Beach',
          location: 'North Goa',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1614082242765-7c98ca0f3df3?auto=format&fit=crop&w=1400&q=80',
          title: 'Dudhsagar Falls',
          location: 'South Goa',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?auto=format&fit=crop&w=1400&q=80',
          title: 'Palm Beach Resort',
          district: 'Candolim',
          price: '149/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Beachfront',
          amenityTwoIcon: Icons.beach_access_rounded,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=1400&q=80',
          title: 'Anjuna Bay Suites',
          district: 'Anjuna',
          price: '129/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Pool',
          amenityTwoIcon: Icons.pool_rounded,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1598091383021-15ddea10925d?auto=format&fit=crop&w=1400&q=80',
    ),
    'Bangalore': const ExploreLocationData(
      searchHint: 'Search cafes, parks, tech hubs, or stays',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=1200&q=80',
          title: 'Indiranagar Brew House',
          subtitle: 'Continental • Premium • 1.1 km',
          rating: '4.7',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1559339352-11d035aa65de?auto=format&fit=crop&w=1200&q=80',
          title: 'MTR Heritage Dining',
          subtitle: 'South Indian • Budget • 0.9 km',
          rating: '4.6',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1596176530529-78163a4f7af2?auto=format&fit=crop&w=1400&q=80',
          title: 'Lalbagh Botanical Garden',
          location: 'Bangalore',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=1400&q=80',
          title: 'Nandi Hills Sunrise Point',
          location: 'Near Bangalore',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1522798514-97ceb8c4f1c8?auto=format&fit=crop&w=1400&q=80',
          title: 'MG Road Skyline Hotel',
          district: 'MG Road',
          price: '159/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'City View',
          amenityTwoIcon: Icons.location_city_rounded,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=1400&q=80',
          title: 'Koramangala Comfort Suites',
          district: 'Koramangala',
          price: '129/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Free WiFi',
          amenityTwoIcon: Icons.wifi,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1513606744171-7f37f5d47e22?auto=format&fit=crop&w=1400&q=80',
    ),
    'Mysore': const ExploreLocationData(
      searchHint: 'Search palaces, gardens, dosa spots, or stays',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=1200&q=80',
          title: 'Mysore Masala Kitchen',
          subtitle: 'South Indian • Budget • 0.7 km',
          rating: '4.5',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1481833761820-0509d3217039?auto=format&fit=crop&w=1200&q=80',
          title: 'Palace Courtyard Cafe',
          subtitle: 'Indian • Premium • 1.3 km',
          rating: '4.6',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1469474968028-56623f02e42e?auto=format&fit=crop&w=1400&q=80',
          title: 'Mysore Palace',
          location: 'Mysore',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1470093851219-69951fcbb533?auto=format&fit=crop&w=1400&q=80',
          title: 'Chamundi Hills',
          location: 'Mysore',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?auto=format&fit=crop&w=1400&q=80',
          title: 'Royal Mysore Palace Stay',
          district: 'Nazarbad',
          price: '119/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Breakfast',
          amenityTwoIcon: Icons.free_breakfast_rounded,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?auto=format&fit=crop&w=1400&q=80',
          title: 'Brindavan Lake Residency',
          district: 'VV Mohalla',
          price: '99/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Pool',
          amenityTwoIcon: Icons.pool_rounded,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1400&q=80',
    ),
    'Ooty': const ExploreLocationData(
      searchHint: 'Search hills, tea gardens, viewpoints, or resorts',
      restaurants: [
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?auto=format&fit=crop&w=1200&q=80',
          title: 'Nilgiri Tea Lounge',
          subtitle: 'Cafe • Premium • 0.6 km',
          rating: '4.6',
        ),
        PlaceItem(
          imageUrl:
              'https://images.unsplash.com/photo-1514933651103-005eec06c04b?auto=format&fit=crop&w=1200&q=80',
          title: 'Ooty Mountain Meals',
          subtitle: 'Indian • Budget • 1.0 km',
          rating: '4.5',
        ),
      ],
      spots: [
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1472396961693-142e6e269027?auto=format&fit=crop&w=1400&q=80',
          title: 'Ooty Lake',
          location: 'Ooty',
        ),
        SpotItem(
          imageUrl:
              'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1400&q=80',
          title: 'Doddabetta Peak',
          location: 'Nilgiris, Ooty',
        ),
      ],
      stays: [
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?auto=format&fit=crop&w=1400&q=80',
          title: 'Misty Hills Resort',
          district: 'Upper Ooty',
          price: '139/night',
          amenityOne: 'King',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Mountain View',
          amenityTwoIcon: Icons.terrain_rounded,
        ),
        StayItem(
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=1400&q=80',
          title: 'Tea Estate Cottage',
          district: 'Lovedale',
          price: '109/night',
          amenityOne: 'Queen',
          amenityOneIcon: Icons.bed_rounded,
          amenityTwo: 'Free WiFi',
          amenityTwoIcon: Icons.wifi,
        ),
      ],
      mapImageUrl:
          'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?auto=format&fit=crop&w=1400&q=80',
    ),
  };

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
    final data =
        currentLocation == null ? null : _dataByLocation[currentLocation];

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
                : [
                    ExploreLocationRow(
                      location: currentLocation,
                      onChange: () => _promptForLocation(),
                    ),
                    ExploreSearchSection(hintText: data.searchHint),
                    const ExploreQuickFilters(),
                    const SizedBox(height: 8),
                    NearbyRestaurantsSection(restaurants: data.restaurants),
                    const SizedBox(height: 8),
                    PopularSpotsSection(spots: data.spots),
                    const SizedBox(height: 8),
                    FeaturedStaysSection(stays: data.stays),
                    MapPreviewSection(
                      imageUrl: data.mapImageUrl,
                      location: currentLocation!,
                    ),
                  ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(
        currentScreen: Path.explore,
      ),
    );
  }
}
