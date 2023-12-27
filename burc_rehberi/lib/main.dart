import 'package:burc_rehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BurcRehberi());
}

class BurcRehberi extends StatelessWidget {
  const BurcRehberi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: BurcListesi(),
    );
  }
}
