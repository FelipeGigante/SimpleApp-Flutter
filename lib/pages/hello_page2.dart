import 'package:first_app/widgets/blue_button.dart';
import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter 2"),
        centerTitle: true,
      ),
      body: _home(context),
    );
  }

  _home(context){
    return Center(
      child: BlueButton(
          "Voltar",
          onPressed: () => _onClickVoltar(context),
          color: Colors.red
      ),
    );
  }

  _onClickVoltar(context) {
    Navigator.pop(context, "Tela 2");
  }
}
