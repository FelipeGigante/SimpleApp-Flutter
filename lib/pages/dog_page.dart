import 'package:flutter/material.dart';
import 'hello_listview.dart';

class DogPage extends StatelessWidget {

  //Instanciando
  final Dog dog;

  //Construtor
  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.nome),
      ),
      body: Image.asset(dog.foto),
    );
  }
}
