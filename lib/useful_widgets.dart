import 'package:flutter/material.dart';

//arrow button
class ArrowButton extends StatelessWidget {
  final Color arrowTheme;
  const ArrowButton({
    super.key,
    required this.arrowTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 16.0), // Adds padding below the arrow icon
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.center,
        width: 40,
        height: 30,
        decoration: BoxDecoration(
          color:arrowTheme,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

// top styled container