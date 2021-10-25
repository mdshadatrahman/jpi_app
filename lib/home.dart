import 'package:flutter/material.dart';
import 'package:jpi_001/board_notice.dart';
import 'package:jpi_001/classroutine.dart';
import 'package:jpi_001/institute_notice.dart';
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
              itemBuilder: (BuildContext context) =>[
                const PopupMenuItem(
                  child: Text('Admin Login')
                ),
              ],
            ),
          ],
        ),
        body: Container(
          //color: Colors.grey,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          
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
                        child: const Text('News Feed'),
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
                        child: const Text('Class Routine\n\n      (CMT)'),
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
                        onPressed: (){}, 
                        child: const Text('Book List'),
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
                        onPressed: (){}, 
                        child: const Text('Exam'),
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
                        onPressed: (){}, 
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