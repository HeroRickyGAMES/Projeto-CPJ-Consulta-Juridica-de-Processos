import 'dart:io';

import 'package:firedart/firedart.dart';

androidFirebase() async {
  String x;

    if(Platform.isAndroid){



      print("Funcionando no Android!");

      CollectionReference teste = Firestore.instance.collection("teste");

      List<dynamic> list = [
        teste
      ];

      String documento = teste.toString().split('{').first;



      print(list);
    }

    if(Platform.isWindows){



      print("Funcionando no Windows!");

      CollectionReference teste = Firestore.instance.collection("teste");

      final testee = await teste.get();

    print('snapshot: ${testee[1]}');
    }

  print("Estou funcionando de fundo!");





}