import 'package:flutter/material.dart';
import 'package:jpi_001/board_notice.dart';
import 'package:jpi_001/institute_notice.dart';
import 'package:jpi_001/news.dart';
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
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('Admin Login')
                ),
              ],
            )
          ],
        ),
        body: Container(
          color: Colors.grey,
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
                          primary: Colors.blueGrey
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
                          primary: Colors.blueGrey
                        ),
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const board_notice()));
                        }, 
                        child: const Text('Board Notice'),
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
                          primary: Colors.blueGrey
                        ),
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const result()));
                        }, 
                        child: const Text('Result'),
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
                          primary: Colors.blueGrey
                        ),
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const news()));
                        }, 
                        child: const Text('News'),
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
                          primary: Colors.blueGrey
                        ),
                        onPressed: (){}, 
                        child: const Text('JPI Contact Info'),
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
                          primary: Colors.blueGrey
                        ),
                        onPressed: (){}, 
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
    );
  }
}