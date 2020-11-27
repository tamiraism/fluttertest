import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  final String bhome;

  const MyApp({Key key, this.bhome}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body:home()

      ),
    );
  }
}
class home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context,int index){
        return ListTile(
          title: Text(getRandomString(5)),
          onTap: () {
            final snackBar = SnackBar(content: Text(getRandomString(5)));
            Scaffold.of(context).showSnackBar(snackBar);
          },
        );
      },
    );

  }
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));