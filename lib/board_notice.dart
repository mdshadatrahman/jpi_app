// ignore_for_file: camel_case_types

import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:path_provider/path_provider.dart';

class board_notice extends StatefulWidget {
  board_notice({Key? key}) : super(key: key);

  @override
  State<board_notice> createState() => _board_noticeState();
}

class _board_noticeState extends State<board_notice> {

  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webView;

  ReceivePort _port = ReceivePort();

@override
void initState() {
	super.initState();

	IsolateNameServer.registerPortWithName(_port.sendPort, 'downloader_send_port');
	_port.listen((dynamic data) {
		String id = data[0];
		DownloadTaskStatus status = data[1];
		int progress = data[2];
		setState((){ });
	});

	FlutterDownloader.registerCallback(downloadCallback);
}

@override
void dispose() {
	IsolateNameServer.removePortNameMapping('downloader_send_port');
	super.dispose();
}

static void downloadCallback(String id, DownloadTaskStatus status, int progress) {
	final SendPort? send = IsolateNameServer.lookupPortByName('downloader_send_port');
	send?.send([id, status, progress]);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const Text('Board Notice'),
          centerTitle: true,
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse('http://www.bteb.gov.bd/site/view/notices'),
          ),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              useOnDownloadStart: true,
              javaScriptEnabled: true,
            ),
          ),
          onWebViewCreated: (InAppWebViewController controller){
            webView = controller;
          },
          onDownloadStart: (controller, url) async{
            final taskId = await FlutterDownloader.enqueue(
              url: url.toString(),
              savedDir: (await getExternalStorageDirectory())!.path,
              saveInPublicStorage: true,
              showNotification: true,
              openFileFromNotification: true,
            );
            FlutterDownloader.registerCallback((downloadCallback));
            
          },
        ),
      ),
    );
  }
}
