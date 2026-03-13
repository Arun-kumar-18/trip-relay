import 'package:flutter/material.dart';

class ExploreFilterChip extends StatelessWidget {
  final String label;
  final bool selected;

  const ExploreFilterChip(
      {super.key, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    const Color activeColor = Color(0xFFEC5B13);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? activeColor : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: selected ? activeColor : const Color(0xFFE2E8F0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: selected ? Colors.white : const Color(0xFF334155),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 4),
          Icon(
            Icons.keyboard_arrow_down,
            size: 18,
            color: selected ? Colors.white : const Color(0xFF64748B),
          ),
        ],
      ),
    );
  }
}
