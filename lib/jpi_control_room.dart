import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:path_provider/path_provider.dart';

class jpi_control_room extends StatefulWidget {
  const jpi_control_room({ Key? key }) : super(key: key);

  @override
  _jpi_control_roomState createState() => _jpi_control_roomState();
}

class _jpi_control_roomState extends State<jpi_control_room> {
    final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webView;

  ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();

    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];
      setState(() {});
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('JPI Control Room'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        color: Colors.grey[700],
        child: Center(
          child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(
                  'https://www.facebook.com/JPI-Control-Room-109708574510283/'),
            ),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                useOnDownloadStart: true,
                javaScriptEnabled: true,
              ),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onDownloadStart: (controller, url) async {
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
      ),
      
    );
  }
}