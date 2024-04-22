import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({super.key});

  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color.fromARGB(255, 20, 109, 18),
        child: const Center(
          child: Text(
            'Top Foodie Page',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
