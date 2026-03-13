import 'package:flutter/material.dart';

class HomeSearchSection extends StatefulWidget {
  final ColorScheme colorScheme;

  const HomeSearchSection({
    super.key,
    required this.colorScheme,
  });

  @override
  State<HomeSearchSection> createState() => _HomeSearchSectionState();
}

class _HomeSearchSectionState extends State<HomeSearchSection> {
  DateTime? _selectedDate;
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _dateController.text =
            '${picked.day} / ${picked.month} / ${picked.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Where are you going?',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(height: 14),
          _SearchField(
            hint: 'Leaving from...',
            icon: Icons.adjust_rounded,
            iconColor: widget.colorScheme.primary,
          ),
          const SizedBox(height: 10),
          const _SearchField(
            hint: 'Going to...',
            icon: Icons.location_on_rounded,
            iconColor: Color(0xFFEF4444),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _SearchField(
                  hint: 'Date',
                  icon: Icons.calendar_month_rounded,
                  iconColor: widget.colorScheme.primary,
                  controller: _dateController,
                  readOnly: true,
                  onTap: _pickDate,
                ),
              ),
              const SizedBox(width: 10),
              const SizedBox(
                width: 112,
                child: _SearchField(
                  hint: '0',
                  icon: Icons.person_rounded,
                  iconColor: Color(0xFF64748B),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.colorScheme.primary,
                foregroundColor: widget.colorScheme.onPrimary,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'Find a Trip',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Color iconColor;
  final TextEditingController? controller;
  final bool readOnly;
  final VoidCallback? onTap;

  const _SearchField({
    required this.hint,
    required this.icon,
    required this.iconColor,
    this.controller,
    this.readOnly = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFF64748B),
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        prefixIcon: Icon(icon, color: iconColor, size: 18),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFFDCEAFE)),
        ),
      ),
    );
  }
}
