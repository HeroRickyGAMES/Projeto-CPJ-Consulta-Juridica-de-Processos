import 'dart:io';

import 'package:flutter/material.dart';
import 'webviewPage.dart';
import 'webViewWindows.dart';

//Programado por HeroRickyGames

class SP extends StatelessWidget {
  const SP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(

          child:
          Text(
            'São Paulo',
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

                  String URL = "https://pje.trt2.jus.br/consultaprocessual/";
                  String title = "Processos Trabalistas no TRT2 (São Paulo e Interior)";

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
                  'Processos Trabalistas no TRT2 (São Paulo e Interior)',
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
                  String URL = "https://pje.trt15.jus.br/consultaprocessual/";
                  String title = "Processos Trabalistas no TRT15 (Campinas e região)";

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
                  'Processos Trabalistas no TRT15 (Campinas e região)',
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
                  String URL = "https://esaj.tjsp.jus.br/cpopg/open.do";
                  String title = "Mais opções no Tribunal de Justiça Estadual";

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
                  'Mais opções no Tribunal de Justiça Estadual',
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
                  String URL = "https://www.jfsp.jus.br/foruns-federais/";
                  String title = "Tribunal Federal";

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
                  'Tribunal Federal',
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

