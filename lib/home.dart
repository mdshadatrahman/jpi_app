import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jpi_001/about.dart';
import 'package:jpi_001/board_notice.dart';
import 'package:jpi_001/classroutine.dart';
import 'package:jpi_001/contact_jpi.dart';
import 'package:jpi_001/institute_notice.dart';
import 'package:jpi_001/jpi_control_room.dart';
import 'package:jpi_001/jpi_facebook.dart';
import 'package:jpi_001/result.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jashore Polytechnic Institute'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        body: Container(
          //color: Colors.grey,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                              
                            ), 
                            child: const Text('Institute Notice'),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const institute_notice()));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const result()));
                            }, 
                            child: const Text('Result'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){
            
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  board_notice()));
                            }, 
                            child: const Text('Board Notice'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  classroutine()));
                            }, 
                            child: const Text('Class Routine'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  const jpi_facebook()));
                            }, 
                            child: const Text('JPI Facebook\nPage'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  const jpi_control_room()));
                            }, 
                            child: const Text('JPI Control Room'),
                          ),
                        ),
                      ),
                    ],
                  ),
            
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  const contact_jpi()));
                            }, 
                            child: const Text('Contact JPI'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey.withOpacity(0.6),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  const about()));
                            }, 
                            child: const Text('About'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
            
              ),
            ),
          ),
        ),
      ),
    );
  }
}