import 'package:flutter/material.dart';

class StayCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String district;
  final String price;
  final String amenityOne;
  final String amenityTwo;
  final IconData amenityOneIcon;
  final IconData amenityTwoIcon;

  const StayCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.district,
    required this.price,
    required this.amenityOne,
    required this.amenityTwo,
    required this.amenityOneIcon,
    required this.amenityTwoIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFF1F5F9)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/tr.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            district,
                            style: const TextStyle(
                              color: Color(0xFF64748B),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      " price",
                      style: const TextStyle(
                        color: Color(0xFFEC5B13),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(amenityOneIcon,
                        size: 14, color: const Color(0xFF64748B)),
                    const SizedBox(width: 4),
                    Text(
                      amenityOne,
                      style: const TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Icon(amenityTwoIcon,
                        size: 14, color: const Color(0xFF64748B)),
                    const SizedBox(width: 4),
                    Text(
                      amenityTwo,
                      style: const TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
