import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttrise/l10n/localizations.dart';

class AppListPage extends StatelessWidget {
  const AppListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FluttriseLocalizations
            .of(context)
            .appListPageTitle),
      ),
      body: ListView.builder(
        itemBuilder: _buildListItem,
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: const <Widget>[
          Icon(
            Icons.local_florist,
            size: 42,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4, right: 4),
            child: Icon(
              Icons.android,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: Text('App 1'),
            ),
          ),
          Icon(
            Icons.check_circle_outline,
            color: Colors.green,
          ),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
