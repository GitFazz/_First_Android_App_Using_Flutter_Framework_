import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),
));

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Magic App'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/mypic.jpg'),
                radius: 80.0,

              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[300 ],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.amberAccent[100],
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Hasan Ibn Arif Efaz',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'FontOne',
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'JOB',
              style: TextStyle(
                color: Colors.amberAccent[100],
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'To Break Hearts',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'efaz701815@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1,

                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              'SEND ME HUGS :\')',
              style: TextStyle(
                color: Colors.amberAccent[100],
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$counter'+' hug sent!',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.normal,
                fontFamily: 'fonts/FontOne',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}



  
