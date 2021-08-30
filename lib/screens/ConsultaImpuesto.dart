import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:alcaldiadesasaima/screens/activity_main.dart';

class Canales extends StatefulWidget {
  final String url;
  const Canales(this.url, {Key? key}) : super(key: key);
  static const routedName = '/canales';

  @override
  _Canales createState() => _Canales();
}

class _Canales extends State<Canales> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('Alcaldía de Sasaima'),
          automaticallyImplyLeading: false,
          actions: <Widget>[NavigationControls(_controller.future)]),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.requireData;
        return Row(
          children: <Widget>[
            IconButton(
              alignment: Alignment.centerRight,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoBack()) {
                        controller.goBack();
                      } else {
                        Navigator.pop(context, MainActivityDesing.routedName);
                        return;
                      }
                    },
            ),
          ],
        );
      },
    );
  }
}

///VA A SERVIR CUANDO SEA PASARELA DE PAGO
/* class Canales extends StatefulWidget {
  final String url;
  const Canales(this.url, {Key? key}) : super(key: key);
  static const routedName = '/canales';

  @override
  _Canales createState() => _Canales();
}

class _Canales extends State<Canales> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context, MainActivityDesing.routedName);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
 */