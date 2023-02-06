import 'package:cloud_firestore/cloud_firestore.dart';
androidFirebase() async {
  var db = FirebaseFirestore.instance;

  List<String> valores = <String>[];

  print("Estou funcionando de fundo!");

  await db.collection("teste").get().then((event) {
    for (var doc in event.docs) {
      //print("${doc.id} => ${doc.data()}");
      print("${doc.data()}");

      var values = doc.data().values.toList();

      doc.data().forEach((key, value) {
        print("key: " + key);
        print("value: " + value);

        valores.add(value);

        print("valor na lista é " + "${valores}");

      });
    }
  });

}