import 'dart:io';

import 'package:flutter/material.dart';
import 'webviewPage.dart';
import 'webViewWindows.dart';

//Programado por HeroRickyGames

class Rondonia extends StatelessWidget {
  const Rondonia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(

          child:
          Text(
            'Rondônia',
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
                onPressed: (){

                  String URL = "https://www.tjro.jus.br/appg/pages/index.xhtml";
                  String title = "Tribunal de Justiça do Estado";

                  if(Platform.isWindows){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return ExampleBrowser(URL);

                        }));

                  }

                  if(Platform.isAndroid){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return WebViewApp(URL, title);

                        }));

                  }
                },
                child:Text(
                  'Tribunal de Justiça do Estado',
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
                onPressed: (){
                  String URL = "https://pje.trt14.jus.br/consultaprocessual/";
                  String title = "Tribunal do trabalho";

                  if(Platform.isWindows){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return ExampleBrowser(URL);

                        }));

                  }

                  if(Platform.isAndroid){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return WebViewApp(URL, title);

                        }));

                  }

                },
                child:
                Text(
                  'Tribunal do trabalho',
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
              padding: EdgeInsets.all(16),
              child:
              ElevatedButton(
                onPressed: (){
                  String URL = "https://pje1g.trf1.jus.br/consultapublica/ConsultaPublica/listView.seam";
                  String title = "Tribunal Regional Federal";

                  if(Platform.isWindows){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return ExampleBrowser(URL);

                        }));

                  }

                  if(Platform.isAndroid){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return WebViewApp(URL, title);

                        }));

                  }

                },
                child:
                Text(
                  'Tribunal Regional Federal',
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
    );
  }
}

