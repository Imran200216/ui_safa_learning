import 'package:flutter/material.dart';
import 'package:ui_tutorial/widgets/k_text.dart';

class KChip extends StatelessWidget {
  final String text;
  final IconData prefixChipIcon;
  final Color chipBgColor;

  const KChip({super.key, required this.text, required this.prefixChipIcon, required this.chipBgColor});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: chipBgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: BorderSide(color: Colors.transparent),
      ),
      label: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Row(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            Icon(prefixChipIcon, color: Colors.black, size: 18),

            // Chip Label
            KText(
              text: text,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
