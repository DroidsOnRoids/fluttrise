import 'package:flutter/material.dart';

void main() => runApp(FluttriseApp());

class FluttriseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttrise',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FluttriseSignInPage(title: 'Sign In'),
    );
  }
}

class FluttriseSignInPage extends StatelessWidget {
  FluttriseSignInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}