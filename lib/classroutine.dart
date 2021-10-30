import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:path_provider/path_provider.dart';

class classroutine extends StatefulWidget {
  const classroutine({Key? key}) : super(key: key);

  @override
  _classroutineState createState() => _classroutineState();
}

class _classroutineState extends State<classroutine> {
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
        title: const Text('Class Routine'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        color: Colors.grey[700],
        child: Center(
          child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(
                  'https://drive.google.com/file/d/1WdVVcR8GqRqnMoOpTLQDB_hil10ie-vx/view?fbclid=IwAR2JiOkvtJPF9Jo4DapPNSrB-T_H1Uk_X2Sa__ysMz7XVPfHGtmmNhjMDn8'),
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
