import 'package:flutter/material.dart';
import 'webviewPage.dart';

//Programado por HeroRickyGames

class Amazonas extends StatelessWidget {
  const Amazonas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(

          child:
          Text(
            'Amazonas',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        String URL = "https://consultasaj.tjam.jus.br/cpopg/show.do";
                        String title = "Tribunal de Justiça do Estado";

                        return WebViewApp(URL, title);
                      }));
                },
                child:Text(
                  'Tribunal de Justiça do Estado',
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
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        String URL = "https://pje.trt11.jus.br/consultaprocessual/";
                        String title = "Tribunal do trabalho";

                        return WebViewApp(URL, title);
                      }));
                },
                child:
                Text(
                  'Tribunal do trabalho',
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
              padding: EdgeInsets.all(16),
              child:
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        String URL = "https://pje1g.trf1.jus.br/consultapublica/ConsultaPublica/listView.seam";
                        String title = "Tribunal Regional Federal";

                        return WebViewApp(URL, title);
                      }));
                },
                child:
                Text(
                  'Tribunal Regional Federal',
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

