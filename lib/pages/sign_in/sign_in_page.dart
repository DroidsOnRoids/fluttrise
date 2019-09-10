import 'package:flutter/material.dart';
import 'package:fluttrise/l10n/localizations.dart';

class SignInPage extends StatelessWidget {
  //const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FluttriseLocalizations
            .of(context)
            .signInPageTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: FluttriseLocalizations
                        .of(context)
                        .personalAccessTokenHint,
                    border: const OutlineInputBorder()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Text(FluttriseLocalizations
                      .of(context)
                      .signInButtonText),
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
