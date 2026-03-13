import 'package:flutter/material.dart';

class TripRelayAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TripRelayAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: colorScheme.primary,
      toolbarHeight: 68,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: Colors.white.withOpacity(0.35), width: 1.2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.18),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipOval(
              child: SizedBox(
                height: 46,
                width: 46,
                child: Image.asset(
                  "assets/tr.webp",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Color(0xFFFFFFFF), Color(0xFFBAF1FF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: const Text(
                  "Trip Relay",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.4,
                    height: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Move Smart",
                style: TextStyle(
                  color: colorScheme.onPrimary.withOpacity(0.9),
                  fontSize: 11,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_rounded,
                color: colorScheme.onPrimary)),
        Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ClipOval(
              child: SizedBox(
                height: 46,
                width: 46,
                child: Image.asset(
                  "assets/default-avatar.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(68);
}
