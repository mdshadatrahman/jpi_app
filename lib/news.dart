import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class news extends StatelessWidget {
  const news({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const Text('News'),
          centerTitle: true,
        ),
        body: const WebView(
        initialUrl: 'http://www.jpi.edu.bd/category/news-updates/',
        javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}