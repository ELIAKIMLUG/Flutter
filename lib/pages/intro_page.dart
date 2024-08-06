import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0,
              right: 80,
              bottom: 40,
              top: 100,
            ),
            child: Image.asset('assets/images/tshirt.png'), // Replace with actual logo name
          ),
          const Text(
            "we deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0), // Spacing for both texts
            child: Text(
              "Fresh items everyday",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const Spacer(), // Spacer at the bottom
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24.0),
              child: const Text("Get Started", style: TextStyle(color: Colors.white)), // Change text color to white
            ),
          ),
        ],
      ),
    );
  }
}