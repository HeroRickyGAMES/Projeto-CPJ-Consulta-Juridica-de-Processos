import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';
import 'androidFirebase.dart';

class Noticias extends StatefulWidget {

  final String titulo;
  final String descricao;
  final List<String> lista;

  const Noticias(this.titulo, this.descricao, this.lista);

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
            return Container(
              height: 50,
              child: Center(
                child:
                Text(
                  "$key",
                  style:
                  TextStyle(
                      fontSize: 20),
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

