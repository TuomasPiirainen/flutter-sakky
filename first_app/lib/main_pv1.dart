import 'package:flutter/material.dart';

// Koodi rakentuu kahdesta erilaisista "sanoista"
// 1. keywords, ohjelmointikieli määrittelee
// 2. identifiers, ohjelmoijat määrittelevät

void main() {
  // Määritellään funktio, tämä "main" on dart kielen aloituspiste

  // funktion body
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'), // pilkku, sulkujen jälkeen
        ),
      ),
    ),
  ); // Suoritetaan flutter frameworkin funktio
} // const, data on immutable (ei voi muuttua)

void add({num1, num2}) {
  // määritellään //aaltosulkeet//
  num1 + num2; // 3 ja 5
}

void test() {
  // suoritetaan
  add(num1: 3, num2: 5);
}
