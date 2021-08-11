import 'package:flutter/material.dart';
import 'package:alcaldiadesasaima/screens/activity_main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ConsultaImpuesto extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Alcaldia de Sasaima'),
      ),
      body: WebView(initialUrl:"https://sasaima.hassqlservice.com/Login.aspx",
      javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}