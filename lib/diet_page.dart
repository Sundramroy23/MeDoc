import 'package:flutter/material.dart';
import 'package:medoc/useful_widgets.dart';

class DietPage extends StatelessWidget {
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Green area at the top
              Container(
                height: 250, // Fixed height of the stack's parent container
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(231, 250, 231, 1), // Green color
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50), // Rounded corners
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),

              // First Positioned Widget
              Positioned(
                top: 60, // Adjusted to reduce spacing
                left: 25,
                right: 25,
                child: SizedBox(
                  height: 80, // Reduced height of the card
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0), // Reduced padding
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Plus Icon
                            IconButton(
                              onPressed: () {
                                // Add your plus action here
                              },
                              icon: Icon(Icons.remove_circle),
                              color: const Color.fromRGBO(28, 98, 5, 1),
                              iconSize: 28, // Reduced icon size
                            ),

                            // Space between Icon and Text
                            SizedBox(width: 50),

                            // Text
                            Text(
                              "Some Text\nSome Text",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14), // Reduced font size
                            ),

                            // Space between Text and Minus Icon
                            SizedBox(width: 50),

                            // Minus Icon
                            IconButton(
                              onPressed: () {
                                // Add your minus action here
                              },
                              icon: Icon(Icons.add_circle),
                              color: const Color.fromRGBO(28, 98, 5, 1),
                              iconSize: 28, // Reduced icon size
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Second Positioned Widget
              Positioned(
                top: 150, // Adjusted to stack properly under the first widget
                left: 25,
                right: 25,
                child: SizedBox(
                  height: 80, // Reduced height of the card
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0), // Reduced padding
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Minus Icon
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              // Add your minus action here
                            },
                            icon: Icon(Icons.local_fire_department_outlined),
                            color: const Color.fromRGBO(28, 98, 5, 1),
                            iconSize: 36, // Reduced icon size
                          ),

                          // Space between Icon and Text
                          SizedBox(width: 40),

                          // Text
                          Text(
                            "Current Weight\nSome Text",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14), // Reduced font size
                          ),

                          // Space between Text and Minus Icon
                          SizedBox(width: 8),

                          // Minus Icon
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 30, // Space between the stack and the grid
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ArrowButton(
                arrowTheme: Color.fromRGBO(231, 250, 231, 1),
              ),
            ),
          ),
          // Grid Section
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 0),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  // color: Colors.green,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(26),
                              bottomLeft: Radius.circular(26),
                            ),
                            color: const Color.fromARGB(255, 199, 220, 199),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 250,
                          // color: Colors.yellow,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Some Text",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 199, 220, 199),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Add your minus action here
                              },
                              icon: Icon(Icons.add),
                              color: Colors.black87,
                              iconSize: 28, // Reduced icon size
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
