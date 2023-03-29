import 'package:ejemplo21/resultados.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const inactiveColor = Color.fromARGB(255, 133, 133, 133);
const activeColor = Color.fromARGB(244, 0, 255, 221);

enum Genero {
  hombre,
  mujer,
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  Color hombreColor = inactiveColor;
  Color mujerColor = inactiveColor;
    double imc = 0.0;


  Genero genSeleccionado = Genero.mujer;
  int altura = 160;
  int peso = 60;
  int edad = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MONITOR DE SALUD')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    genSeleccionado = Genero.hombre;
                  });
                },
                child: Container(
                  height: 200,
                  width: 170,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: genSeleccionado == Genero.hombre ? activeColor : inactiveColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.mars, size: 65.0,),
                      SizedBox(height: 5.0,),
                      Text('Hombre', style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 220, 178, 79)),)
                    ],
                  ),
                ),
              )),
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    genSeleccionado = Genero.mujer;
                  });
                },
                child: Container(
                  height: 200,
                  width: 170,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: genSeleccionado == Genero.mujer ? activeColor : inactiveColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.venus, size: 65.0,),
                      SizedBox(height: 5.0,),
                      Text('Mujer', style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 220, 178, 79)),)
                    ],
                  ),
                ),
              )
              ),
            ],
          )),
          Expanded(child: Container(
                height: 200,
                width: 170,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('Altura', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98), fontWeight: FontWeight.w900),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$altura', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Color(0xFF8D8E98)),),
                        Text(' CM', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),)
                      ],
                    ),
                    SliderTheme(
                      data : SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(disabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                          thumbColor: Color.fromARGB(255, 21, 46, 235),
                          activeTrackColor: Color.fromARGB(255, 90, 88, 205),
                          overlayColor: Color(0x29EB1555),
                          inactiveTrackColor: Color.fromARGB(255, 200, 201, 207)
                        ),
                      child: Slider(
                        value: altura.toDouble(),
                        min: 40.0,
                        max: 210,
                        onChanged: (double nuevoValor) {
                          setState(() {
                            altura = nuevoValor.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              )
              ),
          Expanded(child: Row(
            
            children: [
              Expanded(child: Container(
                height: 200,
                width: 170,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Peso', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),),
                    SizedBox(height: 3.0,),
                    Text('$peso', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          child: Icon(Icons.remove, color: Colors.white,),
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState(() {
                              peso--;
                            });
                          },
                        ),
                        FloatingActionButton(
                          child: Icon(Icons.add, color: Colors.white,),
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState(() {
                              peso++;
                            });
                          },
                        )
                      ],
                    )
                  ], 
                ),  
              ),),
              Expanded(child: Container(
                height: 200,
                width: 170,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Edad', style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),),
                    SizedBox(height: 3.0,),
                    Text('$edad', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          child: Icon(Icons.remove, color: Colors.white,),
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState(() {
                              edad--;
                            });
                          },
                        ),
                        FloatingActionButton(
                          child: Icon(Icons.add, color: Colors.white,),
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState(() {
                              edad++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
              ),
            ],
          )
          ),
           GestureDetector(
            onTap: () {
                    imc = (peso /
                        (altura /
                            100 *
                            altura /
                            100));
                    imc = ((imc * 1000).ceil() / 1000);
                    print(imc);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Resultados(imc: imc)));
                  },/*
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Resultados(imc: imc,)));
            },*/
             child: Container(
              child: Center(
                child: Text('CALCULAR', style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              height: 50.0,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
                     ),
           ),
        ],
      )
    );
  }
}