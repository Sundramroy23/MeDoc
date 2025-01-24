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
          height: heightCust ?? 30.0, // Default height
          decoration: BoxDecoration(
            color: arrowTheme, // Background color
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
          child: Center(
            child: const Icon(
              Icons.arrow_back_ios, // Back arrow icon
              size: 24.0, // Icon size
              color: Colors.black, // Icon color
            ),
          ),
        ),
      ),
    );
  }
}


class WomenPageStackedContainer extends StatelessWidget {
  const WomenPageStackedContainer({
    super.key,
    required this.currentMonth,
    required this.currentYear,
    required this.weeklist,
    required this.currentDate,
  });

  final String currentMonth;
  final String currentYear;
  final List<Map<String, String>> weeklist;
  final String currentDate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Top green container
        Container(
          height: 250, // Fixed height of the stack's parent container
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 233, 237, 1), // Pinkish background
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50), // Rounded corners
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
        // Month and Year
        Positioned(
          top: 60,
          left: 25,
          right: 25,
          child: Center(
            child: Text(
              '$currentMonth, $currentYear',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // Weekdays and Dates
        Positioned(
          top: 120,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: weeklist.map((day) {
              bool isToday = day['date'] == currentDate;
              return Column(
                children: [
                  Text(
                    day['day']![0], // First letter of the day
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isToday ? Colors.red : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isToday
                          ? const Color.fromRGBO(255, 100, 100, 1)
                          : Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      day['date']!,
                      style: TextStyle(
                        fontSize: 16,
                        color: isToday ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}