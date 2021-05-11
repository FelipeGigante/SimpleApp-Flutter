import 'dart:io';

import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[

            UserAccountsDrawerHeader(
                accountName: Text("Felipe"),
                accountEmail: Text("lipe.gigante2004@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("Mais Informações"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Clicado");
              },
            ),

            ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda"),
              subtitle: Text("Mais Informações"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Clicado");
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {

              },
            )
          ],
        ),
      ),
    );
  }
}
