

import 'package:flutter/material.dart';

import 'game_page.dart';

class screen extends StatelessWidget {
  
  const screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('TIC TAC TEO', ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
        body: Stack(
          
            children: [
            
            Expanded(
              child: Image.asset(
            '/home/jahye/Desktop/Flutter_final_project/image/bg1.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),),
            
            ListView(
                  children: <Widget>[
                   
                   Padding(
                      
                     padding: const EdgeInsets.only(top: 300,bottom:8,left:300,right:300),
                     
                     child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GamePage(),
                        ),
                      );
                   
                  },
                  child: Container(
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 30, 152, 14),
                    
                   ),
                   
                   height: 50.0,
                   child: Center(
                     child: Text('PLAY WITH FRIENDS'),
                   ),
                  ),
                     ),
                   ),
                  
                  
                    ],
                  )
          ],
        )
      );
    
  }
}
