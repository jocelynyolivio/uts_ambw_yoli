import 'package:flutter/material.dart';

class FourthTab extends StatefulWidget {
  const FourthTab({super.key});

  @override
  State<FourthTab> createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> {
  final _textController = TextEditingController();
  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(userPost),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: const OutlineInputBorder(),
                prefixIcon: IconButton(
                  icon: const Icon(Icons.abc),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  userPost = _textController.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
