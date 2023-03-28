import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
    final double imc;
  const Resultados({Key? key, required this.imc}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: 
          Container(
            child: Text('RESULTADOS', style: TextStyle(
              fontSize: 35.0, 
              fontWeight: FontWeight.bold
              ),
            ),
          ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Text('PESO SALUDABLE',style: TextStyle(
                    fontSize: 22.0, 
                    fontWeight: FontWeight.bold, 
                    color: Color.fromARGB(240, 6, 6, 255)
                    ),
                  ),
                  Text(imc.toString(),style: TextStyle(
                    fontSize: 70.0, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.black
                    ),
                  ),
                  Text('Su IMC indica que su peso esta en la categoria peso saludable', style: TextStyle(
                    fontSize: 22.0, 
                    color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                    child: Text('Volver a calcular'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    ),
                    
                ],
              ),
            ), 
            ),
        ],
      ),
    );
  }
   List getResult() {
    if (imc < 18.5) {
      return [
        "Bajo Peso",
        Colors.orangeAccent,
        "Tienes un bajo peso corporal. ¡Debes aumentar un poco de peso!"
      ];
    } else if (imc >= 18.5 && imc <= 24.9) {
      return [
        "Normal",
        Colors.greenAccent,
        "Tienes un peso corporal normal. ¡Buen trabajo!"
      ];
    } else if (imc >= 25 && imc <= 29.9) {
      return [
        "Sobrepeso",
        Colors.deepOrange,
        "Tienes un peso corporal en sobrepeso. ¡Debes bajar un poco de peso!"
      ];
    } else if (imc >= 30 && imc <= 34.9) {
      return [
        "Obesidad I",
        Colors.redAccent,
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
        Colors.red,
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