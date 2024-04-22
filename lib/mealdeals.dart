import 'package:flutter/material.dart';
import 'package:uts_ambw_yoli/lists.dart';

class MealDeals extends StatelessWidget {
  const MealDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
        itemCount: 5, // Jumlah kartu yang ingin ditampilkan
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/meal$index.jpeg', // Ganti dengan path gambar dari aset
                    width: double.infinity, // Lebar kartu mengikuti lebar layar
                    height: 200, // Tinggi kartu
                    fit: BoxFit.cover, // Penyesuaian gambar
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
                                  height:8), // Jarak antara judul dan deskripsi
                              Container(
                                child: Text(
                                  mealDealDesc[index], // Deskripsi dari array
                                  style: TextStyle(fontSize: 14),
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
    );
  }
}
