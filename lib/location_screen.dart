import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Lokasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lokasi Toko Harian Bunda',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Berada di Jalan Soekarno Hatta No.191B, RT3/RW1, Kel. Bulakan Balai Kandih, Kec. Payakumbuh Barat, Kota Payakumbuh, Sumatra Barat. Hanya beberapa Ruko jarak nya dengan Kantor Polisi Militer dan tepat disebelah Twin Mart.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final url = 'https://maps.app.goo.gl/fi9XQSnYjP33uoEd7';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        label: const Text('Buka Lokasi Toko Sekarang'),
        icon: const Icon(Icons.map),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
