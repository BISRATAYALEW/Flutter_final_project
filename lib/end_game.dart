import 'package:flutter/material.dart';

class end_game {
  
 
  void end(BuildContext context, String currentPlayer,_win, _color) {
    
     showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor:_color
          ), child:  AlertDialog(
          title: Center(child: Text('player $_win win',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),),
              content: Expanded(child: Image.asset('image/$_win.jpeg',)),
         
          
          actions: <Widget>[
            TextButton(
              child: Text('Close',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
       
      },
    );  }

     void draw(BuildContext context) {
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor: Color(0xFFFFD700)
          ), child:  AlertDialog(
          title:  Center(child: Text('DRAW',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
          content:Expanded(child: Image.asset('image/draw.jpg',)),
          
          actions: <Widget>[
            TextButton(
              child: Text('Close',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
       
      },
    );

  }
   
}