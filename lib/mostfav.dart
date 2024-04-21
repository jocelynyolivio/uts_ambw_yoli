import 'package:flutter/material.dart';

class MostFav extends StatelessWidget {
  const MostFav({Key? key}) : super(key: key);

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
                    'assets/images/assets$index.jpeg', // Ganti dengan path gambar dari aset
                    width: double.infinity, // Lebar kartu mengikuti lebar layar
                    height: 200, // Tinggi kartu
                    fit: BoxFit.cover, // Penyesuaian gambar
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Description $index', // Ganti dengan deskripsi sesuai kebutuhan
                      style: TextStyle(fontSize: 14),
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
