import 'package:trip_relay/trip/widgets/explore_content_widgets.dart';

Future<List<PlaceItem>?> fetchRestaurants(String location) async {
  final restaurants = {
    "Delhi": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1514933651103-005eec06c04b?auto=format&fit=crop&w=1200&q=80',
        title: 'Chandni Chowk Bites',
        subtitle: 'Mughlai • Budget • 0.8 km',
        rating: '4.6',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1559339352-11d035aa65de?auto=format&fit=crop&w=1200&q=80',
        title: 'Connaught Curry House',
        subtitle: 'North Indian • Premium • 1.4 km',
        rating: '4.7',
      ),
    ],
    "Mumbai": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?auto=format&fit=crop&w=1200&q=80',
        title: 'Marine Spice Deck',
        subtitle: 'Coastal • Budget • 0.7 km',
        rating: '4.5',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=1200&q=80',
        title: 'Bandra Bistro',
        subtitle: 'Fusion • Premium • 1.2 km',
        rating: '4.7',
      )
    ],
    "Jaipur": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1559329007-40df8a9345d8?auto=format&fit=crop&w=1200&q=80',
        title: 'Pink City Thali House',
        subtitle: 'Rajasthani • Premium • 0.9 km',
        rating: '4.8',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1481833761820-0509d3217039?auto=format&fit=crop&w=1200&q=80',
        title: 'Amber Courtyard Cafe',
        subtitle: 'Indian • Premium • 1.5 km',
        rating: '4.6',
      ),
    ],
    "Goa": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?auto=format&fit=crop&w=1200&q=80',
        title: 'Sunset Shack Grill',
        subtitle: 'Seafood • Premium • 0.4 km',
        rating: '4.7',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=1200&q=80',
        title: 'Calangute Curry Bowl',
        subtitle: 'Goan • Premium • 1.0 km',
        rating: '4.6',
      ),
    ],
    "Bangalore": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=1200&q=80',
        title: 'Indiranagar Brew House',
        subtitle: 'Continental • Premium • 1.1 km',
        rating: '4.7',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1559339352-11d035aa65de?auto=format&fit=crop&w=1200&q=80',
        title: 'MTR Heritage Dining',
        subtitle: 'South Indian • Budget • 0.9 km',
        rating: '4.6',
      ),
    ],
    "Mysore": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=1200&q=80',
        title: 'Mysore Masala Kitchen',
        subtitle: 'South Indian • Budget • 0.7 km',
        rating: '4.5',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1481833761820-0509d3217039?auto=format&fit=crop&w=1200&q=80',
        title: 'Palace Courtyard Cafe',
        subtitle: 'Indian • Premium • 1.3 km',
        rating: '4.6',
      ),
    ],
    "Ooty": [
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?auto=format&fit=crop&w=1200&q=80',
        title: 'Nilgiri Tea Lounge',
        subtitle: 'Cafe • Premium • 0.6 km',
        rating: '4.6',
      ),
      const PlaceItem(
        imageUrl:
            'https://images.unsplash.com/photo-1514933651103-005eec06c04b?auto=format&fit=crop&w=1200&q=80',
        title: 'Ooty Mountain Meals',
        subtitle: 'Indian • Budget • 1.0 km',
        rating: '4.5',
      ),
    ]
  };

  await Future.delayed(const Duration(seconds: 2));
  return restaurants[location];
}
