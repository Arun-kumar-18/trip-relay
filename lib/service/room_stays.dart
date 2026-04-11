import 'package:flutter/material.dart';
import 'package:trip_relay/trip/widgets/explore_content_widgets.dart';

Future<List<StayItem>?> fetchRoomStays(String location) async {
  final roomStays = {
    "Delhi": [
      const StayItem(
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
      const StayItem(
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
    "Mumbai": [
      const StayItem(
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
      const StayItem(
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
    "Jaipur": [
      const StayItem(
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
      const StayItem(
        imageUrl:
            'https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=1400&q=80',
        title: 'Fort View Residency',
        district: 'Civil Lines',
        price: '109/night',
        amenityOne: 'Queen',
        amenityOneIcon: Icons.bed_rounded,
        amenityTwo: 'Pool',
        amenityTwoIcon: Icons.pool_rounded,
      )
    ],
    "Goa": [
      const StayItem(
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
      const StayItem(
        imageUrl:
            'https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=1400&q=80',
        title: 'Anjuna Bay Suites',
        district: 'Anjuna',
        price: '129/night',
        amenityOne: 'Queen',
        amenityOneIcon: Icons.bed_rounded,
        amenityTwo: 'Pool',
        amenityTwoIcon: Icons.pool_rounded,
      )
    ],
    "Bangalore": [
      const StayItem(
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
      const StayItem(
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
    "Mysore": [
      const StayItem(
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
      const StayItem(
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
    "Ooty": [
      const StayItem(
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
      const StayItem(
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
  };
  await Future.delayed(const Duration(seconds: 2));
  return roomStays[location];
}
