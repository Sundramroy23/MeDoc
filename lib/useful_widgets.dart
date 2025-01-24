import 'package:flutter/material.dart';

// ArrowButton widget
class ArrowButton extends StatelessWidget {
  final Color arrowTheme;
  final double? widthCust; // Custom width
  final double? heightCust; // Custom height

  const ArrowButton({
    super.key,
    required this.arrowTheme,
    this.widthCust,
    this.heightCust,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 16.0), // Adds padding below the button
      child: GestureDetector(
        onTap: () {
          // Add your back navigation or action here
        },
        child: Container(
          width: widthCust ?? 40.0, // Default width
          height: heightCust ?? 40.0, // Default height
          decoration: BoxDecoration(
            color: arrowTheme, // Background color
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
          child: const Icon(
            Icons.arrow_back_ios, // Back arrow icon
            size: 18.0, // Icon size
            color: Colors.black, // Icon color
          ),
        ),
      ),
    );
  }
}
