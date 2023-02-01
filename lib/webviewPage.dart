import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//Programado por HeroRickyGames

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const WebViewApp("", ""),
    ),
  );
}

class WebViewApp extends StatefulWidget {

  final String url;
  final String title;

  const WebViewApp(this.url, this.title);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );

    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.canGoBack();
    controller.canGoForward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
          actions: <Widget>[
            ElevatedButton(onPressed: (){
              print("Voltando");
              controller.goBack();
            },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                ),
                child: Image.network('https://raw.githubusercontent.com/HeroRickyGAMES/Projeto-CPJ-Consulta-Juridica-de-Processos/master/src/voltar.png')
            ),
            ElevatedButton(onPressed: (){
              print("Indo pra frente");
              controller.goForward();
            },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[900],
            ),
                child: Image.network('https://raw.githubusercontent.com/HeroRickyGAMES/Projeto-CPJ-Consulta-Juridica-de-Processos/master/src/irprafrente.png')
            )
          ],
        title: Text(widget.title),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
