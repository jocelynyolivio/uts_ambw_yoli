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
  final TextEditingController _textController = TextEditingController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: "Search for restaurants..",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                onPressed: () {
                  _textController.clear();
                },
                icon: Icon(Icons.clear),
              ),
            ),
          ),
          Container(
            // color: Colors.red,
            height: 200,
            width: 150,
            padding: const EdgeInsets.only(top: 20.0),
            child: CarouselSlider(
              items: [
                // Container wrapping the image with border radius
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(1.0),
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
                  padding: EdgeInsets.all(1.0),
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
                  padding: EdgeInsets.all(1.0),
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
                  setState(() {
                    _currentIndex = index; // Perbarui indeks halaman aktif
                  });
                },
                enlargeCenterPage: true,
              ),
            ),
          ),
          Container(
            height: 20,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3, // Jumlah gambar dalam CarouselSlider
                (index) {
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? Colors.blue : Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most Popular',
                style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Times new roman", fontWeight: FontWeight.bold),
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
                      fontSize: 20,
                      color: Color.fromARGB(255, 24, 109, 179),fontFamily: "Times new roman", fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline), // Text style
                ),
                child: const Text('See All'),
              ),
            ],
          ),
          //cards
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman MostFav dengan parameter tertentu
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MostFav(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/assets$index.jpeg',
                              width: 200,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mostFavName[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 150,
                                  child: Text(
                                    mostFavDesc[index],
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
                  ),
                );
              },
            ),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Meal Deals',
              style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Times new roman", fontWeight: FontWeight.bold),
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
                      fontSize: 20,
                      color: Color.fromARGB(255, 24, 109, 179),fontFamily: "Times new roman", fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline), // Text style
                ),
              child: const Text('See All'),
            ),
          ]),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman MostFav dengan parameter tertentu
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MealDeals(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/meal$index.jpeg',
                              width: 200,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mealDealName[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 150,
                                  child: Text(
                                    mealDealDesc[index],
                                    style: TextStyle(fontSize: 14, fontFamily: "Times new roman"),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
