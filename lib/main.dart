import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: MystatelessWidget()));
}

class MystatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My cool application"),
      ),
      body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /*new Text("hello"),
          new Text("I am"),
          new Text("Khalil"),*/
              new MyCard(
                  title: new Text("I love flutter"),
                  icon: new Icon(
                    Icons.favorite,
                    size: 40.0,
                    color: Colors.red,
                  )),
              new MyCard(
                  title: new Text("programming is fun"),
                  icon: new Icon(
                    Icons.computer,
                    size: 40.0,
                    color: Colors.blue,
                  )),
              new MyCard(
                  title: new Text("I see you"),
                  icon: new Icon(
                    Icons.visibility,
                    size: 40,
                    color: Colors.blueGrey,
                  )),
            ],
          )),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});
  final Widget title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
          child: new Container(
              padding: EdgeInsets.all(15.0),
              child: new Column(children: <Widget>[
                /*   new Text("I love flutter"),
        new Icon(Icons.favorite)*/
                this.title,
                this.icon
              ]))),
    );
  }
}
