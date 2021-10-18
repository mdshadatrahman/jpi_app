import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class board_notice extends StatelessWidget {
  const board_notice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const Text('Board Notice'),
          centerTitle: true,
        ),
        body: const WebView(
        initialUrl: 'http://www.bteb.gov.bd/site/view/notices',
        javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}