import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'mostfav.dart';
// import 'mealdeals.dart';
import 'homepage.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';
import 'fourth_tab.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
            title: const Text("SYDNEY CBD"),
          ),
          body: const TabBarView(
                  children: [
                    HomePage(),
                    FirstTab(),
                    SecondTab(),
                    ThirdTab(),
                    FourthTab(),
                  ],
                ),
          bottomNavigationBar: const TabBar(
            indicatorColor: Colors.orange,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.orange,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.place)),
              Tab(icon: Icon(Icons.bookmark)),
              Tab(icon: Icon(Icons.emoji_emotions)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
