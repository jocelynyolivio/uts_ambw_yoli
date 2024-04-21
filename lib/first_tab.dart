import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.pink[100],
          title: const Text('TITLE'),
          content: const Text('more info here'),
          actions: [
            MaterialButton(
              onPressed: () {
                debugPrint("OK pressed");
              },
              child: const Text('OK'),
            ),
            MaterialButton(
              onPressed: () {
                debugPrint("Cancel pressed");
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: MaterialButton(
          color: Colors.deepOrange[400],
          onPressed: _showDialog,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
