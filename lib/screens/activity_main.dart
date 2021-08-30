import 'package:alcaldiadesasaima/screens/ConsultaImpuesto.dart';

import 'package:flutter/material.dart';

class MainActivityDesing extends StatelessWidget {
  String url = 'https://sasaima.hassqlservice.com/Login.aspx';
  static const routedName = '/mainactivitydesing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          pinned: true,
          floating: false,
          expandedHeight: 190,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/prueba.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                alignment: Alignment.topCenter,
                child: Text(
                    ('¡Bienvenido a la aplicación de Trámites de la Alcaldía municipal!'),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'sans serif'),
                    textAlign: TextAlign.center),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 50, left: 120, top: 100),
                  child: TextButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Canales(url)));
                      Navigator.pushNamed(context, Canales.routedName);
                    },
                    child: Image(
                      image: AssetImage('assets/pagopredial.png'),
                      alignment: Alignment.center,
                      height: 200,
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 50, left: 120, top: 300),
                  child: TextButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Canales(url)));
                      Navigator.pushNamed(context, Canales.routedName);
                    },
                    child: Image(
                      image: AssetImage('assets/pagoica.png'),
                      alignment: Alignment.center,
                      height: 200,
                    ),
                  )),
              Align(
                child: Container(
                    margin: EdgeInsets.only(bottom: 50, right: 10, top: 520),
                    child: TextButton(
                      onPressed: () async {
                        String url =
                            'https://www.facebook.com/alcaldiadesasaima/';
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Canales(url)));
                        Navigator.pushNamed(context, Canales.routedName);
                      },
                      child: Image(
                        image: AssetImage('assets/facebook.png'),
                        alignment: Alignment.center,
                        height: 40,
                      ),
                    )),
              ),
              Align(
                child: Container(
                    margin: EdgeInsets.only(bottom: 50, left: 86, top: 520),
                    child: TextButton(
                      onPressed: () async {
                        String url = 'https://twitter.com/alcaldiasasaima';
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Canales(url)));
                        Navigator.pushNamed(context, Canales.routedName);
                      },
                      child: Image(
                        image: AssetImage('assets/twitter.png'),
                        alignment: Alignment.center,
                        height: 40,
                      ),
                    )),
              ),
              Align(
                child: Container(
                    margin: EdgeInsets.only(bottom: 50, right: 100, top: 520),
                    child: TextButton(
                      onPressed: () async {
                        String url =
                            'https://sasaima.101tramites.com/Paginas/default.aspx';
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Canales(url)));
                        Navigator.pushNamed(context, Canales.routedName);
                      },
                      child: Image(
                        image: AssetImage('assets/portal.png'),
                        alignment: Alignment.center,
                        height: 40,
                      ),
                    )),
              ),
              Align(
                child: Container(
                    margin: EdgeInsets.only(bottom: 50, right: 30, top: 580),
                    child: TextButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Canales(url)));
                        Navigator.pushNamed(context, Canales.routedName);
                      },
                      child: Image(
                        image: AssetImage('assets/logo101.png'),
                        alignment: Alignment.center,
                        height: 20,
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 595, right: 245),
                alignment: Alignment.bottomCenter,
                child: Text(('App desarrollada por:'),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'sans serif'),
                    textAlign: TextAlign.end),
              ),
              Container(
                margin: EdgeInsets.only(top: 595, left: 230),
                alignment: Alignment.bottomCenter,
                child: Text(('Todos los derechos reservados'),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'sans serif'),
                    textAlign: TextAlign.end),
              ),
              Container(
                margin: EdgeInsets.only(top: 620, left: 2),
                alignment: Alignment.bottomCenter,
                child: Text(('Copyright 2021'),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'sans serif'),
                    textAlign: TextAlign.center),
              ),
            ],
          )
        ]))
      ],
    ));
  }
}
     
/* class MainActivityDesing extends StatelessWidget {
  static const routedName = '/mainactivitydesing';
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Fondo(),
            Container(
              margin: EdgeInsets.only(top: 26),
              constraints: BoxConstraints(minWidth: 70, minHeight: 70),
              child: Scrollbar(
                controller: _scrollController,
                child: SingleChildScrollView(
                  //color: Colors.black,
                  child: Stack(
                    children: [
                      Bienvenida(),
                      Facebook(),
                      Predial(),
                      Ica(),
                      Twitter(),
                      Portal(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */
//Texto de bienvenida
/*class Bienvenida extends StatelessWidget {
  const Bienvenida({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 200, right: 20),
          alignment: Alignment.topCenter,
          child: Text(
              ('¡Bienvenido a la aplicación de Trámites de la Alcaldía municipal!'),
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'sans serif'),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}

//fondo
class Fondo extends StatelessWidget {
  const Fondo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 29),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/prueba.png'), fit: BoxFit.cover)),
        )
      ],
    );
  }
}

//Pago Predial
class Predial extends StatefulWidget {
  @override
  PagoPredial createState() => new PagoPredial();
}

class PagoPredial extends State<StatefulWidget> {
  String url = 'https://sasaima.hassqlservice.com/Login.aspx';
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Align(
          child: Container(
              margin: EdgeInsets.only(bottom: 50, left: 12, top: 250),
              child: TextButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Canales(url)));
                  Navigator.pushNamed(context, Canales.routedName);
                },
                child: Image(
                  image: AssetImage('assets/pagopredial.png'),
                  alignment: Alignment.center,
                  height: 200,
                ),
              )),
        ),
      ],
    );
  }
}

//Pagoica
class Ica extends StatefulWidget {
  @override
  PagoIca createState() => new PagoIca();
}

class PagoIca extends State<Ica> {
  String url = 'https://sasaima.hassqlservice.com/Login.aspx';
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Align(
          child: Container(
              margin: EdgeInsets.only(bottom: 50, left: 12, top: 450),
              child: TextButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Canales(url)));
                  Navigator.pushNamed(context, Canales.routedName);
                },
                child: Image(
                  image: AssetImage('assets/pagoica.png'),
                  alignment: Alignment.center,
                  height: 200,
                ),
              )),
        ),
      ],
    );
  }
}
 */