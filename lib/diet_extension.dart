import 'package:flutter/material.dart';
import 'package:medoc/useful_widgets.dart';

class DietSelection extends StatefulWidget {
  const DietSelection({super.key});

  @override
  State<DietSelection> createState() => _DietSelectionState();
}

class _DietSelectionState extends State<DietSelection> {
  // final int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StackWidget(),

          const SizedBox(
            height: 30, // Space between the stack and the grid
          ),

          //  Grid Section
          FoodItems(),
        ],
      ),
    );
  }
}

class FoodItems extends StatefulWidget {
  const FoodItems({
    super.key,
  });

  @override
  State<FoodItems> createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  String dropdownValue = 'Drop1';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            // color: Colors.green,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      // alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        onChanged: (value) => {
                          setState(
                            () {
                              dropdownValue = value!;
                            },
                          )
                        },
                        icon: Icon(Icons.keyboard_arrow_down),
                        
                        items: const [
                          DropdownMenuItem<String>(
                            value: "Drop1",
                            child: Text("Drop1"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Drop2",
                            child: Text("Drop2"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Drop3",
                            child: Text("Drop3"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 180,
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
                    width: 10,
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
    );
  }
}

class StackWidget extends StatefulWidget {
  const StackWidget({
    super.key,
  });

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Reduced padding
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Plus Icon
                    ArrowButton(
                      arrowTheme: Colors.white,
                      widthCust: 50,
                      heightCust: 50,
                    ),

                    // Space between Icon and Text
                    Spacer(),

                    // Text
                    Text(
                      "Some Text\nSome Text",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14), // Reduced font size
                    ),

                    // Space between Text and Minus Icon
                    Spacer(),

                    // Minus Icon
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Add your minus action here
                        },
                        child: Icon(
                          Icons.add,
                          size: 26,
                        ),
                        // Reduced icon size
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 25,
          right: 25,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'What did You eat?',
              hintStyle: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 86, 86, 86),
                  fontWeight: FontWeight.w500),
              prefixIcon: const Icon(
                Icons.search,
                color: Color.fromRGBO(191, 191, 191, 1),
                size: 30,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        // Third Positioned: Card Overflowing the Stack
        Positioned(
          top: 220,
          left: 25,
          right: 25,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OptionContainer(
                    text: "Foods",
                    isSelected: _selectedOption == 0,
                    onTap: () {
                      setState(() {
                        _selectedOption = 0;
                      });
                    },
                  ),

                  // Option 2
                  OptionContainer(
                    text: "Favourites",
                    isSelected: _selectedOption == 1,
                    onTap: () {
                      setState(() {
                        _selectedOption = 1;
                      });
                    },
                  ),
                  // Option 3
                  OptionContainer(
                    text: "Dishes",
                    isSelected: _selectedOption == 2,
                    onTap: () {
                      setState(
                        () {
                          _selectedOption = 2;
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OptionContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionContainer({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(219, 248, 218, 1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Highlight if selected
          ),
        ),
      ),
    );
  }
}
