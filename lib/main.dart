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
import './paraiba.dart';
import './parana.dart';
import './Pernambuco.dart';
import './piaui.dart';
import './RJ.dart';
import './RN.dart';
import './RS.dart';
import './Rondonia.dart';
import './Roraima.dart';
import './SC.dart';
import './SP.dart';
import './Sergipe.dart';
import './Tocantins.dart';
import './Tribunais.dart';
import './Noticias.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//Programado por HeroRickyGames

void main() {

  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        primaryColor: Colors.white,
      ),
      home: const WebViewApp(),
    ),
  );

  if(Platform.isWindows){
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.windows,
    );
  }

  if(Platform.isAndroid){
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.android,
    );
  }

}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => mainActivity();
}

class mainActivity extends State<WebViewApp> {
  bool startou = false;

  @override
  void initState() {
    super.initState();
    startou = true;
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
          return Amazonas();
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
  void ParanaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Parana();
        }));

  }

  void ParaibaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Paraiba();
        }));

  }
  void PernambucoBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Pernambuco();
        }));

  }
  void PaiuiBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Piaui();
        }));

  }
  void RJBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return RJ();
        }));

  }
  void RNBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return RN();
        }));

  }
  void RSBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return RS();
        }));

  }
  void RondoniaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Rondonia();
        }));

  }
  void RoraimaBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Roraima();
        }));

  }
  void SCBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return SC();
        }));

  }
  void SPBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return SP();
        }));

  }
  void SergipeBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Sergipe();
        }));

  }
  void TocantinsBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Tocantins();
        }));

  }
  void TribunaisBTN()  {

    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Tribunais();
        }));

  }
  NoticiasBTN() {

    if(Platform.isWindows){
      var snackBar = SnackBar(content: Text('A fun????o acessar noticias n??o est?? disponivel no Windows ainda!'));
      // Step 3
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }else if(Platform.isAndroid){

      List<String> titulo = <String>[];
      List<String> descricao = <String>[];

      Navigator.push(context,
          MaterialPageRoute(builder: (context){
            return Noticias(titulo, descricao);
          }));

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(
          child:
            Text(
              'CJP - Consulta Jur??dica de Processos',
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
                      color: Colors.white
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
                      color: Colors.white
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
                    'Amap??',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                      color: Colors.white
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
                      color: Colors.white
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
                    'Bras??lia (Distrito Federal)',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                    'Cear??',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                      color: Colors.white
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
                  'Goi??s',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
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
                    'Maranh??o',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                      color: Colors.white
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
                      color: Colors.white
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
                      color: Colors.white
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
                    'Par??',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                  onPressed: ParaibaBTN,
                  child: Text(
                    'Para??ba',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                  onPressed: ParanaBTN,
                  child: Text(
                    'Paran??',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                  onPressed: PernambucoBTN,
                  child: Text(
                    'Pernambuco',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                  onPressed: PaiuiBTN,
                  child: Text(
                    'Piau??',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: RJBTN,
                  child: Text(
                    'Rio de Janeiro',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: RNBTN,
                  child: Text(
                    'Rio Grande do Norte',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: RSBTN,
                  child: Text(
                    'Rio Grande do Sul',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: RondoniaBTN,
                  child: Text(
                    'Rond??nia',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: RoraimaBTN,
                  child: Text(
                    'Roraima',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: SCBTN,
                  child: Text(
                    'Santa Catarina',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: SPBTN,
                  child: Text(
                    'S??o Paulo',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: SergipeBTN,
                  child: Text(
                    'Sergipe',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: TocantinsBTN,
                  child: Text(
                    'Tocantins',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
                  onPressed: TribunaisBTN,
                  child: Text(
                    'Outros Tribunais',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white
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
     ),
      floatingActionButton:
      FloatingActionButton.extended(
          onPressed: startou == true ? () => NoticiasBTN() : null,
          label:
          Text(
            'Acessar Noticias do app',
            style:
            TextStyle(
                fontSize: 20
            ),
          ),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
