import 'package:flutter/material.dart';
class result extends StatelessWidget {
  const result({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'), 
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 70,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[800],
                    ),
                    onPressed: (){}, 
                    child: const Text('Internal Result (1st - 3rd Semester)')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 70,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[800],
                    ),
                    onPressed: (){}, 
                    child: const Text('Board Result (4th - 8th Semester)')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}