// 1. Dart projekti alkaa lib/main.dart tiedostosta
// 2. Suoritus alkaa main-funktiosta. Lisää tähän tiedostoon main funktio.
// 3. Flutter käynnistyy runApp-funktiosta. Lisää se funktio.
// 4. Flutter käyttää Material Design UI-kirjastoa, lisää sen widget.
// 5. Käyttöliittymän rakennus alkaa jostakin widgetistä, lisää se widget
// 6. Lisää tekstiä, joka on keskitetty.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          // Abstract luokkaa ei voi luoda objectia, siitä vaan peritään asioita
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Colors.orangeAccent],
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight// ctrl + alt
              ,),
              ),
          child: const Center(
            child: Text( // isompi fontti ja valkoinen väri
              'Hello, world', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              )
               ), // ctrl + spacebar
          ),
        ),
      ),
    ),
  );
}

// Flutter on type-safe kieli. type, tarkoittaa datatyyppiä.
// Data           -> Data tyypin nimi
// 'Hello world!' -> string / Object
// 29             -> int / num / Object
// MaterialApp    -> MetiralApp / Widget / Object
// OmaLuokka      -> OmaLuokka / Widget / Object
// OmaLuokkaWidget-> OmaLuokkaWidget / Widget / Object.

// Luokilla voi tehdä omia datarakenteita tai datatyyppejä+

// Luokka on kokoelma 1. dataa ja 2. toiminnallisuutta
// 1. data on muuttujia / variables / properties
// 2. toiminnallisuus on funktio / function / method
