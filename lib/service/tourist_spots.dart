import 'package:trip_relay/trip/widgets/explore_content_widgets.dart';

Future<List<SpotItem>?> fetchTouristSpots(String location) async {
  final Map<String, List<SpotItem>> touristSpots = {
    "Delhi": [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1524492412937-b28074a5d7da?auto=format&fit=crop&w=1400&q=80',
        title: 'Red Fort',
        location: 'Old Delhi',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1587474260584-136574528ed5?auto=format&fit=crop&w=1400&q=80',
        title: 'India Gate',
        location: 'New Delhi',
      ),
    ],
    'Mumbai': [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1570168007204-dfb528c6958f?auto=format&fit=crop&w=1400&q=80',
        title: 'Gateway of India',
        location: 'Colaba, Mumbai',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1595658658481-d53d3f999875?auto=format&fit=crop&w=1400&q=80',
        title: 'Marine Drive',
        location: 'South Mumbai',
      ),
    ],
    'Jaipur': [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1477587458883-47145ed94245?auto=format&fit=crop&w=1400&q=80',
        title: 'Hawa Mahal',
        location: 'Jaipur, Rajasthan',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1599661046289-e31897846e41?auto=format&fit=crop&w=1400&q=80',
        title: 'Amber Fort',
        location: 'Amer, Jaipur',
      ),
    ],
    'Goa': [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?auto=format&fit=crop&w=1400&q=80',
        title: 'Baga Beach',
        location: 'North Goa',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1614082242765-7c98ca0f3df3?auto=format&fit=crop&w=1400&q=80',
        title: 'Dudhsagar Falls',
        location: 'South Goa',
      ),
    ],
    'Bangalore': [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1596176530529-78163a4f7af2?auto=format&fit=crop&w=1400&q=80',
        title: 'Lalbagh Botanical Garden',
        location: 'Bangalore',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=1400&q=80',
        title: 'Nandi Hills Sunrise Point',
        location: 'Near Bangalore',
      ),
    ],
    'Mysore': [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1469474968028-56623f02e42e?auto=format&fit=crop&w=1400&q=80',
        title: 'Mysore Palace',
        location: 'Mysore',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1470093851219-69951fcbb533?auto=format&fit=crop&w=1400&q=80',
        title: 'Chamundi Hills',
        location: 'Mysore',
      ),
    ],
    'Ooty': [
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1472396961693-142e6e269027?auto=format&fit=crop&w=1400&q=80',
        title: 'Ooty Lake',
        location: 'Ooty',
      ),
      const SpotItem(
        imageUrl:
            'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1400&q=80',
        title: 'Doddabetta Peak',
        location: 'Nilgiris, Ooty',
      ),
    ],
  };
  await Future.delayed(const Duration(seconds: 2));
  return touristSpots[location];
}
