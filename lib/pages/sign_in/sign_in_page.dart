import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Personal access token',
                    border: OutlineInputBorder()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: const Text('SIGN IN'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
