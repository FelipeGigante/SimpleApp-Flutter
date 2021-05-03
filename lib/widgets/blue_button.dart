import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {

  //Declaração
  String text;
  Function onPressed;
  Color color;

  //Construtores
  BlueButton(this.text, {this.onPressed, this.color: Colors.blue});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            color,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        onPressed: onPressed
    );;
  }
}
