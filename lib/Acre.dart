import 'package:flutter/material.dart';
import './tbjeAPage.dart';

class Acre extends StatelessWidget {
  const Acre({Key? key}) : super(key: key);

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
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return tbjeA();
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
            padding: EdgeInsets.all(16),
            child:
            ElevatedButton(
              onPressed: (){ },
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
          ElevatedButton(
            onPressed: (){ },
            child: Text('Tribunal Regional Federal',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[900],
            ),
          ),
        ]
    ),
    );
  }
}

