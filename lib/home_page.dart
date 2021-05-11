import 'package:first_app/drawer_list.dart';
import 'package:first_app/pages/hello_listview.dart';
import 'package:first_app/pages/hello_page2.dart';
import 'package:first_app/pages/hello_page3.dart';
import 'package:first_app/widgets/blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Page 1",),
              Tab(text: "Page 2",),
              Tab(text: "Page 3",)
            ],
          ),
        ),

        body: TabBarView(children: [
            _body(context),

          Container(
              color: Colors.green,
            ),

          Container(
            color: Colors.yellow,
          )
          ],),

        drawer: DrawerList(),
      ),
    );
  }

  _body(context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons()
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img("assets/images/dog1.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png"),
          _img("assets/images/dog4.png"),
          _img("assets/images/dog5.png")
        ],
      ),
    );
  }

  _buttons() {
    return Builder(builder: (context) {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton("ListView", onPressed: () =>  _onClickNavigator(context, HelloListView())),
              BlueButton("Page 2", onPressed: () =>  _onClickNavigator(context, HelloPage2())),
              BlueButton("Page 3", onPressed: () =>  _onClickNavigator(context, HelloPage3())),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton("Snack", onPressed: () => _onClickSnack(context)),
              BlueButton("Dialog", onPressed: () => _onClickDialog(context)),
              BlueButton("Toast", onPressed: () => _onClickToast(context))
            ],
          )
        ],
      );
    },);
  }

  void _onClickNavigator(BuildContext context, Widget page)  async  {
    String s = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));

    print(">> $s");
  }

  _onClickSnack(context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Botão Clicado!"),
      action: SnackBarAction(label: "Ok", onPressed: () {
        print("Ok");
      }),
    ));
  }

  _onClickDialog(context) {
    showDialog(context: context,  barrierDismissible: false, builder: (context) {
      return AlertDialog(
        title: Text("Alerta Vermelho!!",
          style: TextStyle(
            color: Colors.red,
          ),),
        actions: <Widget>[
          FlatButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          FlatButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.pop(context);
              }
          )
        ],
      );
    });
  }

  _onClickToast(context) {
    Fluttertoast.showToast(
        msg: "Flutter is Cool... Admit",
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 4,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 20.0
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
