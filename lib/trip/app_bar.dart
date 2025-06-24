import 'package:flutter/material.dart';

class TripRelayAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TripRelayAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Theme.of(context).colorScheme.primary,
      centerTitle: true,
      title: const Text(
        "Trip Relay",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
