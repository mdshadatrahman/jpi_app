import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Column(
                      children: const [
                        Text(
                          'This app is developed and maintained by:\n',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Md. Shadat Rahman\nJashore Polytechnic Institute\nDepartment: Computer Technology\nSemester: 7th\nRoll: 915666\nReg: 853251\nShift: 2nd',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                            ),
                        ),
                        Text(
                          '\n(A few minor bugs are still active. Those will be debugged soon.)\n\nTo contact the developer, please send email to \'shadat.rahman.464@gmail.com\'\n',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Clipboard.setData(
                              const ClipboardData(text: 'shadat.rahman.464@gmail.com'),);
                            Fluttertoast.showToast(
                            msg: 'Copied to clipboard: shadat.rahman.464@gmail.com',
                            toastLength: Toast.LENGTH_SHORT,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        },
                        child: const Text(
                          'Copy Email',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                      ),
                    ),
            ],
            
          ),
        ),
      ),
    );
  }
}
