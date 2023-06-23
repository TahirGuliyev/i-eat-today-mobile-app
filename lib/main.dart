import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'BU GÜN NƏ YEYİM?',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int sorbaNo = 1;
  int yemekNo = 1;
  int sirniyyatNo = 1;
  List<String> sorbaAdlari = ['Mərci', 'Tarhana', 'Toyuq', 'Toy', 'Dovğa'];
  List<String> yemekAdlari = [
    'Qarnıyarıq',
    'Mantı',
    'Kuru Fasulye',
    'İçli küftə',
    'Balıq'
  ];
  List<String> sirniyyatAdlari = [
    'Kadayıf',
    'Türk paxlavası',
    'Pudinq',
    'Kazandibi',
    'Dondurma'
  ];
  void reloadFoods() {
    sorbaNo = Random().nextInt(5) + 1;
    sirniyyatNo = Random().nextInt(5) + 1;
    yemekNo = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(reloadFoods);
                  },
                  child: Image.asset('assets/images/sorba_$sorbaNo.jpg')),
            ),
          ),
          Text(
            sorbaAdlari[sorbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(reloadFoods);
                  },
                  child: Image.asset('assets/images/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(reloadFoods);
                  },
                  child:
                      Image.asset('assets/images/sirniyyat_$sirniyyatNo.jpg')),
            ),
          ),
          Text(
            sirniyyatAdlari[sirniyyatNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
