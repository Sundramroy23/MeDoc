import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medoc/useful_widgets.dart';

class WomenHealth extends StatefulWidget {
  const WomenHealth({super.key});

  @override
  State<WomenHealth> createState() => _WomenHealthState();
}

class _WomenHealthState extends State<WomenHealth> {
  final List<Map<String, String>> weeklist = WeekDates().getCurrentWeekDates();
  final String currentMonth = WeekDates().getCurrentMonth();
  final String currentYear = WeekDates().getCurrentYear();
  final String currentDate = WeekDates().getCurrentDate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WomenPageStackedContainer(
              currentMonth: currentMonth,
              currentYear: currentYear,
              weeklist: weeklist,
              currentDate: currentDate),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: ArrowButton(
              arrowTheme: Color.fromRGBO(255, 233, 237, 1),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Container(
              width: 225,
              height: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(112.5),
                // color: Colors.amberAccent,
                border: Border.all(
                  color: Color.fromRGBO(177, 177, 177, 1),
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2,
                  color: Color.fromRGBO(255, 233, 237, 1),
                  shape: CircleBorder(),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Current Cycle"),
                        Text(
                          "DAY 0 ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: 125,
              height: 35,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 158, 152, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Log for Today",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "24 Days\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24, // Larger font size
                          color: const Color.fromARGB(
                              255, 255, 90, 90), // Text color
                        ),
                      ),
                      TextSpan(
                        text: "Next Period",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18, // Normal font size
                          color: const Color.fromARGB(
                              255, 255, 90, 90), // Text color
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "High\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24, // Larger font size
                          color:
                              Color.fromARGB(255, 147, 77, 217), // Text color
                        ),
                      ),
                      TextSpan(
                        text: "Fertility",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18, // Normal font size
                          color:
                              Color.fromARGB(255, 147, 77, 217), // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WeekDates {
  List<Map<String, String>> getCurrentWeekDates() {
    // Get today's date
    DateTime today = DateTime.now();

    // Find the start of the week (Sunday)
    int weekday = today.weekday;
    DateTime startOfWeek = today.subtract(Duration(days: weekday % 7));

    // Generate a list of dates for the current week
    List<Map<String, String>> weekDates = [];
    for (int i = 0; i < 7; i++) {
      DateTime currentDate = startOfWeek.add(Duration(days: i));
      weekDates.add(
        {
          'day':
              DateFormat('EEEE').format(currentDate), // Day name (e.g., Sunday)
          'date': DateFormat('dd').format(currentDate), // Day of the month
        },
      );
    }
    return weekDates;
  }

  String getCurrentDate() {
    DateTime today = DateTime.now();
    return DateFormat('dd').format(today);
  }

  String getCurrentYear() {
    DateTime today = DateTime.now();
    return today.year.toString();
  }

  String getCurrentMonth() {
    DateTime today = DateTime.now();
    return DateFormat('MMMM').format(today);
  }
}
