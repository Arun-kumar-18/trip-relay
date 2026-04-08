import 'package:flutter/material.dart';

class PopularDestinationsSection extends StatelessWidget {
  const PopularDestinationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    const destinations = [
      _DestinationItem(
        city: 'San Francisco',
        price: 'From USD 25.00',
        imageUrl:
            'https://images.unsplash.com/photo-1429087969512-1e85aab2683d?auto=format&fit=crop&w=700&q=80',
      ),
      _DestinationItem(
        city: 'Washington DC',
        price: 'From USD 18.00',
        imageUrl:
            'https://images.unsplash.com/photo-1617581629397-a72507c3de9e?auto=format&fit=crop&w=700&q=80',
      ),
      _DestinationItem(
        city: 'Boston',
        price: 'From USD 22.00',
        imageUrl:
            'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?auto=format&fit=crop&w=700&q=80',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Destinations',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.2,
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, index) {
              final item = destinations[index];
              return _DestinationCard(
                title: item.city,
                price: item.price,
                imageUrl: item.imageUrl,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _DestinationCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  const _DestinationCard({
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(imageUrl, fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xCC000000)],
                ),
              ),
            ),
            Positioned(
              left: 12,
              bottom: 12,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Color(0xFFDBEAFE),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
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

class _DestinationItem {
  final String city;
  final String price;
  final String imageUrl;

  const _DestinationItem({
    required this.city,
    required this.price,
    required this.imageUrl,
  });
}
