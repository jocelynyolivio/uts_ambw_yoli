import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'mostfav.dart';
import 'mealdeals.dart';
import 'lists.dart';

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
    return Padding(
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
          Container(
            height: 200,
            padding: const EdgeInsets.all(10.0),
            child: CarouselSlider(
              items: [
                // Container wrapping the image with border radius
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), // Radius sudut
                    child: Image.asset(
                      'assets/images/assets1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/assets2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/assets3.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  // Callback when page changes
                },
              ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MostFav()));
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Atur border radius sesuai keinginan
                          child: Image.asset(
                            'assets/images/assets$index.jpeg',
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Aligment teks ke kiri
                            children: [
                              Text(mostFavName[index], // Judul
                                style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, // Teks tebal
                                ),
                              ),
                              const SizedBox(
                                  height:8), // Jarak antara judul dan deskripsi
                              Container(
                                width: 150,
                                child: Text(
                                  mostFavDesc[index], // Deskripsi dari array
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MealDeals()));
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Atur border radius sesuai keinginan
                          child: Image.asset(
                            'assets/images/meal$index.jpeg',
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Aligment teks ke kiri
                            children: [
                              Text(mealDealName[index], // Judul
                                style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, // Teks tebal
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      8), // Jarak antara judul dan deskripsi
                              Text(
                                mealDealDesc[index], // Deskripsi dari array
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
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
    );
  }
}
