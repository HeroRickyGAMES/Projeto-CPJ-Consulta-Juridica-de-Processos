import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  const Noticias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(

          child:
          Text(
            'Principais Noticias',
          ),
        ),
      ),
      body: Center(
        child:
        Text('Ramdom Text'),
      ),
    );
  }
}
