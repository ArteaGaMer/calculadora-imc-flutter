import 'dart:js';

import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
    final double imc;
  const Resultados({Key? key, required this.imc}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CALCULADORA IMC')),
      ),
      body: _body(),       
    );
  }
  _body(){
        List results = getResult();
      return Column(        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: 
          Container(
            child: Center(
              child: Text('RESULTADOS', style: TextStyle(
                fontSize: 35.0, 
                fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          ),          
            Expanded(
          flex: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(results[0].toUpperCase(),
                                  style: TextStyle(
                                      color: results[1],
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(imc.toString(),
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(results[2],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
        ],
      );
    }
   List getResult() {
    if (imc < 18.5) {
      return [
        "Bajo Peso",
        Color.fromARGB(255, 210, 168, 112),
        "Tienes un bajo peso corporal. ¡Debes aumentar un poco de peso!"
      ];
    } else if (imc >= 18.5 && imc <= 24.9) {
      return [
        "Normal",
        Color.fromARGB(255, 71, 205, 87),
        "Tienes un peso corporal normal. ¡Buen trabajo!"
      ];
    } else if (imc >= 25 && imc <= 29.9) {
      return [
        "Sobrepeso",
        Color.fromARGB(255, 214, 222, 52),
        "Tienes un peso corporal en sobrepeso. ¡Debes bajar un poco de peso!"
      ];
    } else if (imc >= 30 && imc <= 34.9) {
      return [
        "Obesidad I",
        Color.fromARGB(255, 231, 157, 54),
        "Tienes un peso corporal en obesidad nivel 1. ¡Debes bajar de peso!"
      ];
    } else if (imc >= 35 && imc <= 39.9) {
      return [
        "Obesidad II",
        Colors.redAccent,
        "Tienes un peso corporal en obesidad nivel 2. ¡Debes bajar de peso!"
      ];
    } else if (imc >= 40 && imc <= 49.9) {
      return [
        "Obesidad III",
        Color.fromARGB(255, 130, 13, 5),
        "Tienes un peso corporal en obesidad nivel 3. ¡Debes bajar de peso ahora!"
      ];
    } else {
      return [
        "Obesidad IV",
        Colors.red,
        "Tienes un peso corporal en obesidad nivel 4. ¡Debes bajar de peso urgente!"
      ];
    }
  }
}