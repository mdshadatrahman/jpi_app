import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class contact_jpi extends StatelessWidget {

  _launchCaller() async {
    const url = "tel:+880421-68536";   
    if (await canLaunch(url)) {
       await launch(url);
    } else {
      throw 'Could not launch $url';
    }   
}
  const contact_jpi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact JPI'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'Email: ',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      'principal@jpi.edu.bd',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Clipboard.setData(
                              const ClipboardData(text: 'principal@jpi.edu.bd'),);
                            Fluttertoast.showToast(
                            msg: 'Copied to clipboard',
                            toastLength: Toast.LENGTH_SHORT,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        },
                        child: const Text(
                          'Copy',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Skype: ',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      'Jessore-poly-ins',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Clipboard.setData(
                              const ClipboardData(text: 'Jessore-poly-ins'),);
                            Fluttertoast.showToast(
                            msg: 'Copied to clipboard',
                            toastLength: Toast.LENGTH_SHORT,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        },
                        child: const Text(
                          'Copy',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Contact No: ',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      '+880421-68536 ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchCaller();
                        },
                        child: const Text(
                          'Call',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
