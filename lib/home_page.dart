import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Color>> gradients = [
      {
        'left': const Color.fromRGBO(54, 93, 110, 1),
        'right': const Color.fromRGBO(58, 174, 167, 1),
      },
      {
        'left': const Color.fromRGBO(255, 94, 87, 1),
        'right': const Color.fromRGBO(255, 195, 113, 1),
      },
      {
        'left': const Color.fromRGBO(131, 58, 180, 1),
        'right': const Color.fromRGBO(253, 29, 29, 1),
      },
      {
        'left': const Color.fromRGBO(43, 88, 118, 1),
        'right': const Color.fromRGBO(99, 205, 218, 1),
      },
    ];
    final List<String> titles = [
      "Vitals",
      "Diet",
      "Exercise",
      "Women's Health",
    ];
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 16.0), // Adds padding below the arrow icon
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  alignment: Alignment.center,
                  width: 40,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(213, 238, 237, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 16,
                        ),
                    itemBuilder: (context, index) {
                      return CardItem(
                        title: titles[index],
                        leftGradient: gradients[index]['left']!,
                        rightGradient: gradients[index]['right']!,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Color leftGradient;
  final Color rightGradient;
  final String title;
  const CardItem({
    super.key,
    required this.title,
    required this.leftGradient,
    required this.rightGradient,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            width: 250,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color.fromARGB(255, 233, 240, 242),
                width: 1,
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  leftGradient, // Bottom-left color
                  rightGradient // Top-right color,
                ],
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(16),
              child: Text(
                title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 233, 240, 242),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
