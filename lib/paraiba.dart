import 'dart:io';

import 'package:flutter/material.dart';
import 'webviewPage.dart';
import 'webViewWindows.dart';

//Programado por HeroRickyGames

class Paraiba extends StatelessWidget {
  const Paraiba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(

          child:
          Text(
            'Paraíba',
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

                  String URL = "https://app.tjpb.jus.br/consultaprocessual2/views/consultarPorParte.jsf";
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
                  String URL = "https://monitorarprocesso.com.br/trt/pb.html";
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
                  String URL = "http://portal.trf5.jus.br/cp/";
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

