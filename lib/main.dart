import 'package:flutter/material.dart';
import 'homepage.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';
import 'fourth_tab.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 202, 127).withOpacity(0.1),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 196, 88), // Atur warna AppBar
            centerTitle: true,
            title: const Text(
              "SYDNEY CBD",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
          bottomNavigationBar:const BottomAppBar(
            color: Color.fromARGB(255, 255, 166, 33), // Atur warna bottomNavigationBar
            child: TabBar(
              indicatorColor: const Color.fromARGB(255, 255, 255, 255),
           
              unselectedLabelColor: Colors.black,
              labelColor: const Color.fromARGB(255, 255, 255, 255),
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  child: Text(
                    "Home",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.place),
                  child: Text(
                    "Discovery",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.bookmark),
                  child: Text(
                    "Bookmark",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.emoji_events),
                  child: Text(
                    "Top Foodie",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.person),
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
