import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class institute_notice extends StatelessWidget {
  const institute_notice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const Text('Institute Notice'),
          centerTitle: true,
        ),
        body: const WebView(
        initialUrl: 'https://drive.google.com/drive/u/0/folders/1n8E_L2gZDtHPOdWvXFU89upkZPRDHhe4',
        javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}