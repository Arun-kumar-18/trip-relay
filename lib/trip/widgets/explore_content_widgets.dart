import 'package:flutter/material.dart';
import 'package:trip_relay/trip/widgets/explore_filter_chip.dart';
import 'package:trip_relay/trip/widgets/large_spot_card.dart';
import 'package:trip_relay/trip/widgets/place_card.dart';
import 'package:trip_relay/trip/widgets/stay_card.dart';

class ExploreLocationRow extends StatelessWidget {
  final String? location;
  final VoidCallback onChange;

  const ExploreLocationRow({
    super.key,
    required this.location,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 8),
      child: Row(
        children: [
          const Icon(Icons.place_rounded, color: Color(0xFFEC5B13)),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              location ?? 'Select location',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172A),
              ),
            ),
          ),
          TextButton(onPressed: onChange, child: const Text('Change')),
        ],
      ),
    );
  }
}

class ExploreSearchSection extends StatelessWidget {
  final String hintText;

  const ExploreSearchSection({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: const Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class ExploreQuickFilters extends StatelessWidget {
  const ExploreQuickFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Row(
        children: [
          ExploreFilterChip(label: 'All', selected: true),
          SizedBox(width: 10),
          ExploreFilterChip(label: 'Restaurants'),
          SizedBox(width: 10),
          ExploreFilterChip(label: 'Attractions'),
          SizedBox(width: 10),
          ExploreFilterChip(label: 'Hotels'),
        ],
      ),
    );
  }
}

class NearbyRestaurantsSection extends StatelessWidget {
  final List<PlaceItem> restaurants;

  const NearbyRestaurantsSection({
    super.key,
    required this.restaurants,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
            title: 'Nearby Restaurants', actionLabel: 'See all'),
        SizedBox(
          height: 195,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (var i = 0; i < restaurants.length; i++) ...[
                if (i > 0) const SizedBox(width: 12),
                PlaceCard(
                  imageUrl: restaurants[i].imageUrl,
                  title: restaurants[i].title,
                  subtitle: restaurants[i].subtitle,
                  rating: restaurants[i].rating,
                ),
              ]
            ],
          ),
        ),
      ],
    );
  }
}

class PopularSpotsSection extends StatelessWidget {
  final List<SpotItem> spots;

  const PopularSpotsSection({super.key, required this.spots});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Tourist Spots In India',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 12),
          for (var i = 0; i < spots.length; i++) ...[
            if (i > 0) const SizedBox(height: 12),
            LargeSpotCard(
              imageUrl: spots[i].imageUrl,
              title: spots[i].title,
              location: spots[i].location,
            ),
          ],
        ],
      ),
    );
  }
}

class FeaturedStaysSection extends StatelessWidget {
  final List<StayItem> stays;

  const FeaturedStaysSection({super.key, required this.stays});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(title: 'Featured Stays', actionLabel: 'View map'),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (var i = 0; i < stays.length; i++) ...[
                if (i > 0) const SizedBox(width: 12),
                StayCard(
                  imageUrl: stays[i].imageUrl,
                  title: stays[i].title,
                  district: stays[i].district,
                  price: stays[i].price,
                  amenityOne: stays[i].amenityOne,
                  amenityOneIcon: stays[i].amenityOneIcon,
                  amenityTwo: stays[i].amenityTwo,
                  amenityTwoIcon: stays[i].amenityTwoIcon,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class MapPreviewSection extends StatelessWidget {
  final String imageUrl;
  final String location;

  const MapPreviewSection({
    super.key,
    required this.imageUrl,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: 165,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
              ColoredBox(color: Colors.black.withOpacity(0.15)),
              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEC5B13),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.map_outlined),
                  label: Text(
                    'Explore $location On Map',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final String? actionLabel;

  const SectionHeader({
    super.key,
    required this.title,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
          if (actionLabel != null)
            TextButton(
              onPressed: () {},
              child: Text(
                actionLabel!,
                style: const TextStyle(
                  color: Color(0xFFEC5B13),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ExploreLocationData {
  final String searchHint;
  final List<PlaceItem> restaurants;
  final List<SpotItem> spots;
  final List<StayItem> stays;
  final String mapImageUrl;

  const ExploreLocationData({
    required this.searchHint,
    required this.restaurants,
    required this.spots,
    required this.stays,
    required this.mapImageUrl,
  });
}

class PlaceItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String rating;

  const PlaceItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
}

class SpotItem {
  final String imageUrl;
  final String title;
  final String location;

  const SpotItem({
    required this.imageUrl,
    required this.title,
    required this.location,
  });
}

class StayItem {
  final String imageUrl;
  final String title;
  final String district;
  final String price;
  final String amenityOne;
  final String amenityTwo;
  final IconData amenityOneIcon;
  final IconData amenityTwoIcon;

  const StayItem({
    required this.imageUrl,
    required this.title,
    required this.district,
    required this.price,
    required this.amenityOne,
    required this.amenityTwo,
    required this.amenityOneIcon,
    required this.amenityTwoIcon,
  });
}
