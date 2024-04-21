import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'mostfav.dart';
import 'mealdeals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Search for restaurants..",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              CarouselSlider(
                items: [
                  Image.asset('assets/images/assets1.jpeg'),
                  Image.asset('assets/images/assets1.jpeg'),
                  Image.asset('assets/images/assets1.jpeg'),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  onPageChanged: (index, reason) {
                    // Callback when page changes
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Most Popular',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  TextButton(
                    onPressed: () {
                      // Your action here
                      // print('Button pressed!');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MostFav()));
                    },
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 24, 109, 179),
                          decoration: TextDecoration.underline), // Text style
                    ),
                    child: const Text('See All'),
                  ),
                ],
              ),
              //cards
              SizedBox(
                height: 200, // Set the desired height for the cards
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Number of cards
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/assets$index.jpeg', // Replace with your asset image path
                              width: 150, // Set the desired image width
                              height: 100, // Set the desired image height
                              fit: BoxFit.cover, // Adjust the image fit
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Description $index', // Replace with your manual description
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Meal Deals',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                TextButton(
                  onPressed: () {
                    // Your action here
                    // print('Button pressed!');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MealDeals()));
                  },
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 24, 109, 179),
                        decoration: TextDecoration.underline), // Text style
                  ),
                  child: const Text('See All'),
                ),
              ]),
              SizedBox(
                height: 200, // Set the desired height for the cards
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Number of cards
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/meal$index.jpeg', // Replace with your asset image path
                              width: 150, // Set the desired image width
                              height: 100, // Set the desired image height
                              fit: BoxFit.cover, // Adjust the image fit
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Bundle $index', // Replace with your manual description
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
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
    );
  }
}
