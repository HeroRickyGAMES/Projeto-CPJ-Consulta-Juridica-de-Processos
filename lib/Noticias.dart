import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Noticias extends StatefulWidget {

  //final List<String> lista;
  //final List<String> descricao;
  final List<String> titulo;
  final List<String> descricao;
  const Noticias(this.titulo, this.descricao);

  @override
  State<Noticias> createState() => _NoticiasState();

}

class _NoticiasState extends State<Noticias> {
@override
void initState() {
  // TODO: implement initState
  var db = FirebaseFirestore.instance;

  print("Estou funcionando de fundo!");

  db.collection("noticias").get().then((event) {
    for (var doc in event.docs) {
      //print("${doc.id} => ${doc.data()}");
      print("${doc.data()}");

      doc.data().forEach((key, value) {

        if(key == "titulo"){
          print("valor é: " + value);

          widget.titulo.add(value);

          print("valor na lista é " + "${widget.titulo}");
          db.collection("noticias").get().then((event) {
            for (var doc in event.docs) {
              //print("${doc.id} => ${doc.data()}");
              print("${doc.data()}");

              doc.data().forEach((key, value){

                if(key == "descricao"){
                  print("valor é: " + value);

                  widget.descricao.add(value);

                  setState(() {
                    widget.titulo;
                    widget.descricao;
                  });

                  print("valor na lista é " + "${widget.descricao}");

                }else{
                  print('não existe esse valor');
                }
              });
            }
          });
        }else{
          print('não existe esse valor');
        }
      });
    }
  });
  super.initState();


}

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
          itemCount: widget.titulo.length,
          itemBuilder: (BuildContext context, int index) {
            String key = widget.titulo.elementAt(index);
            String key2 = widget.descricao.elementAt(index);
            return Container(
              child:  Container(
                color: Color.fromARGB(255, 45, 45, 45),
                  padding: EdgeInsets.all(14),
                child:
              Center(
                child:
                Column(
                  children: [
                Container(

                padding: EdgeInsets.all(14),
                  child:
                  Text(
                    "$key",
                    style:
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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

