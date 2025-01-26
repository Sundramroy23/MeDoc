import 'package:flutter/material.dart';
import 'package:medoc/useful_widgets.dart';

class VitalsPage extends StatelessWidget {
  const VitalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> vals = [
      {"val1": "--/--mmHg", "val2": "Blood Pressure"},
      {"val1": "--/--mmHg", "val2": "spO2"},
      {"val1": "--/--mmHg", "val2": "Blood Pressure"},
      {"val1": "Relaxed", "val2": "Stress Level"}
    ];

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Green area at the top
              Container(
                height: 250, // Adjust the height as needed
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(116, 201, 196, 1), // Green color
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50), // Rounded corners
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: ArrowButton(
                  arrowTheme: Color.fromRGBO(213, 238, 237, 1),
                ),
              ),
              // Floating card
              // Positioned(
              //   top: 175, // Adjust the position to make it overlap
              //   left: 25,
              //   right: 25,
              //   child: Card(
              //     elevation: 6,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(36),
              //     ),
              //     child: Container(
              //       height: 150, // Card height
              //       padding: const EdgeInsets.all(16),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             "Floating Card",
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           const SizedBox(height: 8),
              //           const Text(
              //             "This card overlaps the green area and the white background.",
              //             style: TextStyle(
              //               fontSize: 14,
              //               color: Colors.black54,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Second Floating Card for kcal and steps
              Positioned(
                top: 165, // Adjust position to move it further down
                left: 25,
                right: 25,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Container(
                    height: 175, // Height for this card
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.fastfood,
                                      size: 30), // kcal icon
                                  const SizedBox(width: 8),
                                  Text.rich(
                                    TextSpan(
                                      text: "569", // Larger text
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "/2000 kcal", // Smaller text
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const Icon(Icons.directions_walk,
                                      size: 30), // steps icon
                                  const SizedBox(width: 8),
                                  Text.rich(
                                    TextSpan(
                                      text: "2048", // Larger text
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "/6000 steps", // Smaller text
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const Icon(Icons.fastfood,
                                      size: 30), // kcal icon
                                  const SizedBox(width: 8),
                                  Text.rich(
                                    TextSpan(
                                      text: "1024", // Larger text
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "/2000 kcal", // Smaller text
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 60, // Large heart icon
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100, // Space between the floating card and the grid
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 cards per row
                crossAxisSpacing: 16, // Spacing between columns
                mainAxisSpacing: 16, // Spacing between rows
                childAspectRatio:
                    1, // Ensures square cards (width:height = 1:1)
              ),
              padding: const EdgeInsets.all(16),
              itemCount: vals.length, // Use length of vals
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150, // Fixed width
                  height: 150, // Fixed height
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            vals[index]["val1"]!, // Display val1 dynamically
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            vals[index]["val2"]!, // Display val2 dynamically
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
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
