import 'package:flutter/material.dart';
import 'package:alcaldiadesasaima/screens/ConsultaImpuesto.dart';

//Facebook
class Facebook extends StatefulWidget {
  @override
  FacebookState createState() => new FacebookState();
}

class FacebookState extends State<Facebook> {
  String url = 'https://www.facebook.com/alcaldiadesasaima/';
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Align(
          child: Container(
              margin: EdgeInsets.only(bottom: 50, right: 10, top: 700),
              child: TextButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Canales(url)));
                  Navigator.pushNamed(context, Canales.routedName);
                },
                child: Image(
                  image: AssetImage('assets/facebook.png'),
                  alignment: Alignment.center,
                  height: 40,
                ),
              )),
        ),
      ],
    );
  }
}

//Twitter
class Twitter extends StatefulWidget {
  @override
  TwitterState createState() => new TwitterState();
}

class TwitterState extends State<Twitter> {
  String url = 'https://twitter.com/alcaldiasasaima';
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Align(
          child: Container(
              margin: EdgeInsets.only(bottom: 50, left: 80, top: 700),
              child: TextButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Canales(url)));
                  Navigator.pushNamed(context, Canales.routedName);
                },
                child: Image(
                  image: AssetImage('assets/twitter.png'),
                  alignment: Alignment.center,
                  height: 40,
                ),
              )),
        ),
      ],
    );
  }
}

//Portal
class Portal extends StatefulWidget {
  @override
  PortalState createState() => new PortalState();
}

class PortalState extends State<Portal> {
  String url = 'https://sasaima.101tramites.com/Paginas/default.aspx';
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Align(
          child: Container(
              margin: EdgeInsets.only(bottom: 50, right: 100, top: 700),
              child: TextButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Canales(url)));
                  Navigator.pushNamed(context, Canales.routedName);
                },
                child: Image(
                  image: AssetImage('assets/portal.png'),
                  alignment: Alignment.center,
                  height: 40,
                ),
              )),
        ),
      ],
    );
  }
}
