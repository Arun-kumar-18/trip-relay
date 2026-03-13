import 'package:flutter/material.dart';
import 'package:trip_relay/trip/widgets/bottom_navigation_bar.dart';
import 'package:trip_relay/trip/widgets/my_trip_content_widgets.dart';
import 'package:trip_relay/utils/constant.dart';

class MyTripListScreen extends StatefulWidget {
  const MyTripListScreen({super.key});

  @override
  State<MyTripListScreen> createState() => _MyTripListScreenState();
}

class _MyTripListScreenState extends State<MyTripListScreen> {
  bool _showUpcoming = true;

  final List<TripItem> _upcomingTrips = const [
    TripItem(
      dateLabel: 'MON, OCT 24',
      timeLabel: '10:30 AM',
      pickup: '123 Maple St',
      dropoff: 'Downtown Plaza',
      driverName: 'Michael',
      driverImageUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=300&q=80',
      status: TripStatus.confirmed,
    ),
    TripItem(
      dateLabel: 'TUE, OCT 25',
      timeLabel: '09:10 AM',
      pickup: 'Hill View Residency',
      dropoff: 'City Tech Park',
      driverName: 'Arjun',
      driverImageUrl:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=300&q=80',
      status: TripStatus.confirmed,
    ),
  ];

  final List<TripItem> _pastTrips = const [
    TripItem(
      dateLabel: 'FRI, OCT 21',
      timeLabel: '02:15 PM',
      pickup: 'Airport Terminal 2',
      dropoff: 'Sunset Blvd',
      driverName: 'Sarah',
      driverImageUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=300&q=80',
      status: TripStatus.completed,
      fare: '24.50',
    ),
    TripItem(
      dateLabel: 'WED, OCT 19',
      timeLabel: '06:45 PM',
      pickup: 'Metro Station Gate 3',
      dropoff: 'Riverfront Mall',
      driverName: 'Priya',
      driverImageUrl:
          'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?auto=format&fit=crop&w=300&q=80',
      status: TripStatus.completed,
      fare: '19.20',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final activeTrips = _showUpcoming ? _upcomingTrips : _pastTrips;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const MyTripsTopHeader(),
            TripsTabSwitcher(
              showUpcoming: _showUpcoming,
              onTapUpcoming: () {
                setState(() {
                  _showUpcoming = true;
                });
              },
              onTapPast: () {
                setState(() {
                  _showUpcoming = false;
                });
              },
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 20),
                itemCount: activeTrips.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return TripCard(
                    trip: activeTrips[index],
                    isPast: !_showUpcoming,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(
        currentScreen: Path.myTrips,
      ),
    );
  }
}
