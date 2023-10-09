import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
// _ <- alaviiva ennen luokan nimeä tekee luokasta private
// Tätä luokkaa voi ainoastaan käyttää tässä tiedossa.
class _DiceRollerState extends State<DiceRoller> {
   var d = 'assets/images/d1.png';

  //funktio

  // ei pidetä muuttujassa tallessa koko polkua vaan
  // arvotun nopan arvoa
  // polku on kovakodaattu image widgettiin, mutta siell -äö on
  // lisätty nopan arvo string arvoon.

  var currentDiceRoll = 2;

  void rollDice(){
    //koodi
    //määritetään anonyymi fuinktio
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
      // Täällä muokatut luokkamuuttujat, aiheuttavat käyttöliittymän päivityksen
      // Tai ainoastaan tämän luokan päivityksen
      // suorittamista uudelleen   
    }); // määritetään anonyymifunktio
  }

  @override
  Widget build(BuildContext context) {
  return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
        'assets/imagees/d$currentDiceRoll.png', // 2x riviä, tämän avulla kaikki
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
     // Image.asset(activeDiceImage), // kuva child widget
      TextButton(
        // onPressed: () { <- anonyymi funktio}
        // // koodi tähän
        // },
        onPressed: rollDice,
        style: TextButton.styleFrom(
          //padding: const EdgeInsets.only(
        //    top: 20,
      //     ),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 28,
            ),
        ),
      child: const Text('Roll Dice'),
      )
            ],
          );

  } 
}