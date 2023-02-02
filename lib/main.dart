import 'dart:io';

import 'package:cpj_consulta_juridica_de_processos/Amazonas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Acre.dart';
import './Alagoas.dart';
import './amapa.dart';
import './Bahia.dart';
import './Ceara.dart';
import './Brasilia.dart';
import './EspiritoSanto.dart';
import './Goias.dart';
import './Maranhao.dart';
import './MatoGrosso.dart';
import './MatoGrossoDoSul.dart';
import './MinasGerais.dart';
import './para.dart';

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


    print(Platform.isAndroid);
    print(Platform.isWindows);

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
          return Brasilia();
        }));

  }

  void BahiaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Bahia();
        }));

  }
  void BrasiliaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Brasilia();
        }));

  }
  void CearaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Ceara();
        }));

  }
  void EspiritoSantoBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return EspiritoSanto();
        }));

  }
  void GoiasBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Goias();
        }));

  }
  void MaranhaoBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Maranhao();
        }));

  }
  void MatoGrossoBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return MatoGrosso();
        }));

  }
  void MatoGrossoDoSulBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return MatoGrossodoSul();
        }));

  }
  void MinasGeraisBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return MinasGerais();
        }));

  }
  void ParaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Para();
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
      body: Center(
      child: SingleChildScrollView(
      child:
      Column(
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
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child:
                ElevatedButton(
                  onPressed: BrasiliaBTN,
                  child: Text(
                    'Brasília (Distrito Federal)',
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
                  onPressed: CearaBTN,
                  child: Text(
                    'Ceará',
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
                  onPressed: EspiritoSantoBTN,
                  child: Text(
                    'Espirito Santo',
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
                onPressed: GoiasBTN,
                child: Text(
                  'Goiás',
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
                  onPressed: MaranhaoBTN,
                  child: Text(
                    'Maranhão',
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
                  onPressed: MatoGrossoBTN,
                  child: Text(
                    'Mato Grosso',
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
                  onPressed: MatoGrossoDoSulBTN,
                  child: Text(
                    'Mato Grosso do Sul',
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
                  onPressed: MinasGeraisBTN,
                  child: Text(
                    'Minas Gerais',
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
                  onPressed: ParaBTN,
                  child: Text(
                    'Pará',
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
      ),
      )
    );
  }
}
