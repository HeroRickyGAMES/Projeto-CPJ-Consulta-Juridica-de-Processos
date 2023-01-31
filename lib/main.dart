import 'package:flutter/material.dart';

//programado por HeroRickyGames

void main() {

  runApp(
    MaterialApp(
      theme: ThemeData(

      ),
      home: const WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => mainActivity();
}

class mainActivity extends State<WebViewApp> {

  @override
  void initState() {
    super.initState();
  }

  void teste()  {
    print("clicado!");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(
          alignment: Alignment.center,
          child:
            Text(
              'teste',
            ),
      ),
      ),
      body: Column(
        children: [

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child:
            ElevatedButton(
              onPressed: teste,
              child: Text('Acre', style: TextStyle(
                fontSize: 24,
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child:
            ElevatedButton(
              onPressed: teste,
              child: Text('Alagoas',
                style: TextStyle(
                  fontSize: 24,
                ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
