import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width * 0.05;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Tentang Kami'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 800) {
            return buildMobileLayout(paddingValue);
          } else if (constraints.maxWidth > 800) {
            return buildDesktopLayout(paddingValue, constraints);
          }
          return Container();
        },
      ),
    );
  }

  Widget buildMobileLayout(double paddingValue) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(paddingValue),
        child: Column(
          children: [
            Image.asset('assets/images/left.png'),
            Image.asset('assets/images/center.png'),
            Image.asset('assets/images/right.png'),
            SizedBox(height: 20),
            Text(
              'Kedai Harian Bunda',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Kedai Harian Bunda berdiri sejak tahun 2021 tepatnya pada tanggal 17 Mei 2021, menjual berbagai macam kebutuhan harian, pangan, dan pokok. Untuk saat ini toko buka setiap hari dari pukul 10.00 - 20.00 WIB, kami juga melayani pesanan delivery, dan juga tergabung ke beberapa platform e-commerce seperti Shopee dan Tokopedia. Goal kami nantinya terciptanya Freshmart dan Groceries dengan sistem dan manajemen yang modern dan tentunya memudahkan untuk pelanggan kita.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDesktopLayout(double paddingValue, BoxConstraints constraints) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/left.png',
                  fit: BoxFit.cover,
                  width: constraints.maxWidth * 0.4,
                  height: constraints.maxHeight * 0.8,
                ),
                Positioned(
                  top: 0,
                  left: constraints.maxWidth * 0.5,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kedai Harian Bunda',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Kedai Harian Bunda berdiri sejak tahun 2021 tepatnya pada tanggal 17 Mei 2021, menjual berbagai macam kebutuhan harian, pangan, dan pokok. Untuk saat ini toko buka setiap hari dari pukul 10.00 - 20.00 WIB, kami juga melayani pesanan delivery, dan juga tergabung ke beberapa platform e-commerce seperti Shopee dan Tokopedia. Goal kami nantinya terciptanya Freshmart dan Groceries dengan sistem dan manajemen yang modern dan tentunya memudahkan untuk pelanggan kita.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: constraints.maxHeight * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/center.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/right.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
