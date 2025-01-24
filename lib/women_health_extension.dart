import 'package:flutter/material.dart';
import 'useful_widgets.dart'; // Contains WomenPageStackedContainer and WeekDates classes

class WomenHealthExtension extends StatelessWidget {
  const WomenHealthExtension({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the WeekDates class to retrieve the required data
    final weekDates = WeekDates();
    String currentMonth = weekDates.getCurrentMonth();
    String currentYear = weekDates.getCurrentYear();
    List<Map<String, String>> weeklist = weekDates.getCurrentWeekDates();
    String currentDate = weekDates.getCurrentDate();

    return Scaffold(
      body: Column(
        children: [
          // Pass the required data to WomenPageStackedContainer
          WomenPageStackedContainer(
            currentMonth: currentMonth,
            currentYear: currentYear,
            weeklist: weeklist,
            currentDate: currentDate,
          ),
        ],
      ),
    );
  }
}
