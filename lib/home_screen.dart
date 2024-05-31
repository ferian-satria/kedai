import 'package:flutter/material.dart';
import 'package:kedai/cell_screen.dart';
import 'package:kedai/aboutus_screen.dart';
import 'package:kedai/location_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isDarkMode ? Colors.grey[800] : Colors.grey[300],
        title: Image.asset(
          "assets/images/jw.png",
          fit: BoxFit.contain,
          height: 40,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icon/home.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CellScreen();
                      }));
                    },
                    child: Image.asset(
                      'assets/icon/cell.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AboutScreen();
                      }));
                    },
                    child: Image.asset(
                      'assets/icon/aboutus.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LocationScreen();
                      }));
                    },
                    child: Image.asset(
                      'assets/icon/location.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'assets/images/fu.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.all(
                                constraints.maxWidth * 0.02,
                              ),
                              child: Text(
                                'Merupakan toko yang menjual berbagai macam kebutuhan harian, seperti beras, gula, minyak goreng, dan lainnya.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.04,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Image.asset(
                              'assets/images/fu.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(
                                constraints.maxWidth * 0.02,
                              ),
                              child: Text(
                                'Merupakan toko yang menjual berbagai macam kebutuhan harian, seperti beras, gula, minyak goreng, dan lainnya.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.03,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
              Switch(
                value: _isDarkMode,
                onChanged: (value) {
                  setState(() {
                    _isDarkMode = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
