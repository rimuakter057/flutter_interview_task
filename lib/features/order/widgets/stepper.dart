import 'package:flutter/material.dart';

class SimpleStepper extends StatelessWidget {
  const SimpleStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First Circle
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFF0D47A1), // active step color
            shape: BoxShape.circle,
          ),
        ),
        // Line
        Expanded(
          child: Container(
            height: 6,
            color: Color(0xFF0D47A1), // line color
          ),
        ),
        // Second Circle
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color:Color(0xFF0D47A1), // inactive step color
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
