
import 'package:alcaldiadesasaima/screens/activity_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context){
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Alcalda de Sasaima',
     initialRoute: 'activity_main',//define con que ruta se va a iniciar la aplicacion
     routes: {
       'activity_main':(BuildContext context) => MainActivityDesing()

       },
       home: new MainActivityDesing(),
      );
   }
 }




   