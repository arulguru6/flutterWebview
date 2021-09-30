import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  final _links2 = ['https://google.com'];
  final _links = [
    'https://dev-qsenseportal.cognizant.com/single/?appid=3fc4abde-5dcd-4e2b-bc63-9f8f195c2ba9&obj=QpUNuC&opt=ctxmenu,currsel'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links.map((link) => _urlButton(context, link)).toList(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links2.map((link) => _urlButton(context, link)).toList(),
          ),
        ),
      ],
    ))));
  }

  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(url),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
