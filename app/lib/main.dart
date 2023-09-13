import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.casino_outlined,
            color: Color.fromARGB(255, 245, 245, 245), size: 40.0),
        title: const Text(
          'Magic Ball',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.black,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
            // ele expande os elementos de forma que ocupe todo o tamanho da tela
            flex: 10, // por default o tamanho é 1
            child: TextButton(
                onPressed: () {
                  randomGenerator();
                },
                style: TextButton.styleFrom(padding: const EdgeInsets.all(16)),
                child: (Image.asset('images/ball$leftDiceNumber.png')))),
      ],
    ));
  }

  randomGenerator() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
    });
  }
}
