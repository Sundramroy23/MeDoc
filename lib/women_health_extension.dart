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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ArrowButton(arrowTheme: Color.fromARGB(255, 255, 234, 238)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Log for Today",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}




class DropdownCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropdownCardScreen(),
    );
  }
}

class DropdownCardScreen extends StatefulWidget {
  @override
  _DropdownCardScreenState createState() => _DropdownCardScreenState();
}

class _DropdownCardScreenState extends State<DropdownCardScreen> {
  List<bool> _expanded = [false, false, false, false]; // Track the state of each card

  void _toggleExpand(int index) {
    setState(() {
      _expanded[index] = !_expanded[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Cards'),
      ),
      body: ListView.builder(
        itemCount: 4, // Number of cards
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.info, color: Colors.blue),
                  title: Text('Card ${index + 1}'),
                  trailing: IconButton(
                    icon: Icon(
                      _expanded[index] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    onPressed: () => _toggleExpand(index),
                  ),
                ),
                if (_expanded[index]) // Show dropdown content if expanded
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'This is the content of Card ${index + 1}. Add any details here.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
