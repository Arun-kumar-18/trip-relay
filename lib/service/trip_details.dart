Future<({String searchHint, String mapImageUrl})> fetchTripDetails(
    String location) async {
  final Map<String, Map<String, String>> tripDetails = {
    "Delhi": {
      "searchHint": "Search forts, markets, food streets, or stays",
      "mapImageUrl":
          'https://images.unsplash.com/photo-1598091383021-15ddea10925d?auto=format&fit=crop&w=1400&q=80',
    },
    "Mumbai": {
      "searchHint": "Search beaches, cafes, sea views, or hotels",
      "mapImageUrl":
          'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=1400&q=80',
    },
    "Jaipur": {
      "searchHint": "Search forts, palaces, thali spots, or stays",
      "mapImageUrl":
          'https://images.unsplash.com/photo-1506461883276-594a12b11cf3?auto=format&fit=crop&w=1400&q=80',
    },
    "Goa": {
      "searchHint": "Search beaches, shacks, nightlife, or resorts",
      "mapImageUrl":
          'https://images.unsplash.com/photo-1598091383021-15ddea10925d?auto=format&fit=crop&w=1400&q=80',
    },
    "Bangalore": {
      "searchHint": "Search cafes, parks, tech hubs, or stays",
      "mapImageUrl": 'https://picsum.photos/seed/trip-relay-bangalore/1400/800',
    },
    "Mysore": {
      "searchHint": "Search palaces, gardens, dosa spots, or stays",
      "mapImageUrl":
          'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1400&q=80',
    },
    "Ooty": {
      "searchHint": "Search hills, tea gardens, viewpoints, or resorts",
      "mapImageUrl":
          'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?auto=format&fit=crop&w=1400&q=80',
    },
  };
  await Future.delayed(const Duration(seconds: 2));
  return (
    searchHint: tripDetails[location]?["searchHint"] ?? "",
    mapImageUrl: tripDetails[location]?["mapImageUrl"] ?? ""
  );
}
