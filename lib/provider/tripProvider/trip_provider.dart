import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_relay/service/restaurants.dart';
import 'package:trip_relay/service/room_stays.dart';
import 'package:trip_relay/service/tourist_spots.dart';
import 'package:trip_relay/service/trip_details.dart';
import 'package:trip_relay/trip/widgets/explore_content_widgets.dart';

part 'trip_provider.g.dart';

@riverpod
Future<ExploreLocationData> locationData(Ref ref, String location) async {
  final restaurants = await fetchRestaurants(location);
  final stays = await fetchRoomStays(location);
  final spots = await fetchTouristSpots(location);
  final locationDetails = await fetchTripDetails(location);
  return ExploreLocationData(
    searchHint: locationDetails.searchHint,
    restaurants: restaurants ?? [],
    spots: spots ?? [],
    stays: stays ?? [],
    mapImageUrl: locationDetails.mapImageUrl,
  );
}
