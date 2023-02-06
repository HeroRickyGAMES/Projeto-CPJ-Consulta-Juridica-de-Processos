import 'dart:ffi';

import 'package:flutter/material.dart';

class Noticias extends StatefulWidget {

  final List<String> lista;
  final List<String> descricao;

  const Noticias(this.lista, this.descricao);

  @override
  State<Noticias> createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {

  initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      setState(() {
        widget.lista;

        print("pos ${widget.lista}");

      });
    });
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
                  color: Color.fromARGB(255, 45, 45, 45),
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
                      color: Color.fromARGB(255, 45, 45, 45),
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
                        color: Color.fromARGB(255, 45, 45, 45),
                        padding: EdgeInsets.all(double.infinity),
                        child:
                        const Image(
                          image: NetworkImage('https://upload.wikimedia.org/wikipedia/pt/8/8d/Jailson_Mendes.jpg'),
                        )
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
class listaa extends StatefulWidget {
  final List<String> lista;

  const listaa(this.lista);

  @override
  State<listaa> createState() => _listaaState();
}

class _listaaState extends State<listaa> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${widget.lista}",
        textAlign: TextAlign.center,
        style:
        TextStyle(
            fontSize: 25
        ),
      ),
      onTap: () {
        print("o valor na noticia é: ${widget.lista.length}");
        print("o valor na noticia é: ${widget.lista}");
      },
    );
  }
}

