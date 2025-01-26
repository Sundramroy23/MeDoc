import 'package:flutter/material.dart';
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

