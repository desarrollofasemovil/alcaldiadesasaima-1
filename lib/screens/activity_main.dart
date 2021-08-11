import 'dart:ui';
import 'package:flutter/material.dart';

class MainActivityDesing extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
      
        //imagen de fondo
        child:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover
          ),
        ),

        //pago predial
        child: Stack(
          children:[
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 50),
              decoration: BoxDecoration(
               image: DecorationImage(
                 image:AssetImage('assets/pagopredial.png'),
                 alignment: Alignment.center,
                 fit: BoxFit.none,
                 scale: 2.6,
                )
              ),


              //texto de bienvenida
            ),
            Container(
              margin: EdgeInsets.only(left:20, top:200, right:20),
              alignment: Alignment.topCenter,
              child: Text(
                ('¡Bienvenido a la aplicación de Trámites de la Alcaldía municipal!'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'sans serif'
                ),
                textAlign:TextAlign.center
              ),
            ),

            //Pago ica
            Container(
              margin: EdgeInsets.only(top:400, bottom: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pagoica.png'),
                  alignment: Alignment.center,
                  fit: BoxFit.none,
                  scale: 2.6
                ),
              ),
            ),
          ],
        ),
       ),
        //child: Image(image: AssetImage('assets/pagoica.png'),)
      ),
    );
  }
}

