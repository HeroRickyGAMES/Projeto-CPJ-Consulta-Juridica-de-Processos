import 'package:flutter/material.dart';
import './Acre.dart';
import './Alagoas.dart';

//Programado por HeroRickyGames

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

  void acrebtn()  {

    Navigator.push(context,
    MaterialPageRoute(builder: (context){
      return Acre();
    }));

}

  void AlagoasBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Alagoas();
        }));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(
          child:
            Text(
              'CJP - Consulta Jurídica de Processos',
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
              onPressed: acrebtn,
              child: Text('Acre', style: TextStyle(
                fontSize: 24,
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child:
            ElevatedButton(
              onPressed: AlagoasBTN,
              child: Text('Alagoas',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
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
