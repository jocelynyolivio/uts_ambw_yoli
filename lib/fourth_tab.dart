import 'package:flutter/material.dart';

class FourthTab extends StatefulWidget {
  const FourthTab({super.key});

  @override
  State<FourthTab> createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color.fromARGB(255, 233, 135, 30),
        child: const Center(
          child: Text(
            'Account Page',
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
