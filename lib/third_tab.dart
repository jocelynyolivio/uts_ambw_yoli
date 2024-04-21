import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({super.key});

  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  double _currentValue = 0.0;
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
        debugPrint(_dateTime.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Column(
          children: [
            Text(_currentValue.toString()),
            Slider(
              value: _currentValue,
              min: 0,
              max: 10,
              //divisions: 10,
              activeColor: Colors.blue,
              inactiveColor: Colors.black,
              thumbColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
            MaterialButton(
              onPressed: () {
                _showDatePicker();
              },
              color: Colors.blue,
              child: const Text(
                'Show Date Picker',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
