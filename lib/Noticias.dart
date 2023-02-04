import 'package:flutter/material.dart';


class Noticias extends StatefulWidget {

  final String titulo;
  final String descricao;

  const Noticias(this.titulo, this.descricao);


  @override
  State<Noticias> createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
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
      body: SingleChildScrollView(
        child:
        ListTile(
          title: Text(widget.titulo,
            textAlign: TextAlign.center,
            style:
            TextStyle(
                fontSize: 25
            )
            ,),
          onTap: () {
            //Go to the next screen with Navigator.push
          },
        ),
      ),
    );
  }
}
