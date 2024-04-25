import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
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
            // leading: IconButton(
            //   icon: Icon(Icons.home),
            //   onPressed: () {
            //     // Navigator.of(context).pop();
            //     // Navigator.push(
            //     //         context,
            //     //         MaterialPageRoute(
            //     //             builder: (context) => const HomePage()));
            //   },
            // ),
            centerTitle: true,
            title: const Text("SYDNEY CBD", style: TextStyle(fontWeight: FontWeight.bold),),
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
              Tab(icon: Icon(Icons.home), child: Text("Home", style: TextStyle(fontSize: 10),)),
              Tab(icon: Icon(Icons.place), child: Text("Discovery", style: TextStyle(fontSize: 10),)),
              Tab(icon: Icon(Icons.bookmark), child: Text("Bookmark", style: TextStyle(fontSize: 10),)),
              Tab(icon: Icon(Icons.emoji_events), child: Text("Top Foodie", style: TextStyle(fontSize: 9),)),
              Tab(icon: Icon(Icons.person), child: Text("Profile", style: TextStyle(fontSize:10),)),
            ],
          ),
        ),
      ),
    );
  }
}
