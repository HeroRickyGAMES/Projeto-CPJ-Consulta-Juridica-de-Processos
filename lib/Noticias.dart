import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Noticias extends StatefulWidget {

  final List<String> lista;
  final List<String> descricao;

  const Noticias(this.lista, this.descricao);

  @override
  State<Noticias> createState() => _NoticiasState();

}

class _NoticiasState extends State<Noticias> {
@override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Container(
          child:
          Text(
            "Noticias",
          ),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: widget.lista.length,
          itemBuilder: (BuildContext context, int index) {
            String key = widget.lista.elementAt(index);
            String key2 = widget.descricao.elementAt(index);
            return Container(
              child:  Container(
                color: Color.fromARGB(255, 45, 45, 45),
                  padding: EdgeInsets.all(16),
                child:
              Center(
                child:
                Column(
                  children: [
                Container(

                padding: EdgeInsets.all(16),
                  child:
                  Text(
                    "$key",
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child:
                      Text(
                          "$key2",
                          style:
                          TextStyle(
                            fontSize: 20,
                          ),
                    )
                   ),
                    Container(
                        color: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.only(right: double.infinity, bottom: 30),
                        child:
                        Image.asset(
                          'assets/borderline.png',
                        ),
                    ),
                  ],
                ),
              ),
             )
            );
          }
      ),
    );
  }
}

