import 'package:flutter/material.dart';

enum TripStatus { confirmed, completed }

class TripItem {
  final String dateLabel;
  final String timeLabel;
  final String pickup;
  final String dropoff;
  final String driverName;
  final String driverImageUrl;
  final TripStatus status;
  final String? fare;

  const TripItem({
    required this.dateLabel,
    required this.timeLabel,
    required this.pickup,
    required this.dropoff,
    required this.driverName,
    required this.driverImageUrl,
    required this.status,
    this.fare,
  });
}

class MyTripsTopHeader extends StatelessWidget {
  const MyTripsTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border(bottom: BorderSide(color: scheme.primary.withAlpha(40))),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'My Trips',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          _HeaderIconButton(icon: Icons.help_outline_rounded, onTap: () {}),
        ],
      ),
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _HeaderIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: scheme.primary.withAlpha(24),
        ),
        child: Icon(icon, size: 20),
      ),
    );
  }
}

class TripsTabSwitcher extends StatelessWidget {
  final bool showUpcoming;
  final VoidCallback onTapUpcoming;
  final VoidCallback onTapPast;

  const TripsTabSwitcher({
    super.key,
    required this.showUpcoming,
    required this.onTapUpcoming,
    required this.onTapPast,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Row(
        children: [
          _TabButton(
            title: 'Upcoming',
            selected: showUpcoming,
            onTap: onTapUpcoming,
          ),
          _TabButton(
            title: 'Past',
            selected: !showUpcoming,
            onTap: onTapPast,
          ),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const _TabButton({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: selected ? scheme.primary : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
              color: selected ? scheme.primary : const Color(0xFF64748B),
            ),
          ),
        ),
      ),
    );
  }
}

class TripCard extends StatelessWidget {
  final TripItem trip;
  final bool isPast;

  const TripCard({
    super.key,
    required this.trip,
    required this.isPast,
  });

  @override
  Widget build(BuildContext context) {
    final faded = isPast;
    final scheme = Theme.of(context).colorScheme;

    return Opacity(
      opacity: faded ? 0.7 : 1,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: scheme.primary.withAlpha(32)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trip.dateLabel,
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.9,
                          fontWeight: FontWeight.w700,
                          color:
                              faded ? const Color(0xFF64748B) : scheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        trip.timeLabel,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                _TripStatusBadge(status: trip.status),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.radio_button_checked,
                      size: 14,
                      color: faded ? const Color(0xFF94A3B8) : scheme.primary,
                    ),
                    Container(
                      width: 1.5,
                      height: 36,
                      color: faded
                          ? const Color(0xFFCBD5E1)
                          : scheme.primary.withAlpha(102),
                    ),
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: faded ? const Color(0xFF94A3B8) : scheme.primary,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trip.pickup,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: faded
                              ? const Color(0xFF64748B)
                              : const Color(0xFF1E293B),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        trip.dropoff,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: faded
                              ? const Color(0xFF64748B)
                              : const Color(0xFF1E293B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: scheme.primary.withAlpha(32)),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(trip.driverImageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Driver',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        Text(
                          trip.driverName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isPast && trip.fare != null)
                    Text(
                      trip.fare!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: scheme.primary,
                      ),
                    )
                  else
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: scheme.primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Details',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TripStatusBadge extends StatelessWidget {
  final TripStatus status;

  const _TripStatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    if (status == TripStatus.confirmed) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFFDFF8E8),
          borderRadius: BorderRadius.circular(999),
        ),
        child: const Row(
          children: [
            Icon(Icons.check_circle, size: 14, color: Color(0xFF15803D)),
            SizedBox(width: 4),
            Text(
              'Confirmed',
              style: TextStyle(
                color: Color(0xFF15803D),
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(999),
      ),
      child: const Text(
        'Completed',
        style: TextStyle(
          color: Color(0xFF475569),
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
