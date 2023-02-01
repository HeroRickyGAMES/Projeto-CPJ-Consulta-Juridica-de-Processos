import 'package:cpj_consulta_juridica_de_processos/Amazonas.dart';
import 'package:flutter/material.dart';
import './Acre.dart';
import './Alagoas.dart';
import './amapa.dart';
import './Bahia.dart';

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

  void amapabtn()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Amapa();
        }));

  }

  void Amazonasbtn()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Amazonas();
        }));

  }

  void BahiaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Bahia();
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
              child: Text(
                'Acre',
                style: TextStyle(
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
              child: Text(
                'Alagoas',
                style: TextStyle(
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
              onPressed: amapabtn,
              child: Text(
                'Amapá',
                style: TextStyle(
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
              onPressed: Amazonasbtn,
              child: Text(
                'Amazonas',
                style: TextStyle(
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
              onPressed: BahiaBTN,
              child: Text(
                'Bahia',
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
