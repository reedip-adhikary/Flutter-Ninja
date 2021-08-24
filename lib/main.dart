import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],

      appBar: AppBar(
        title: Text('Ninja Id Card'),
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(ninjaLevel <= 5){
              ninjaLevel +=1;
            }
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey[600],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey[900],
                backgroundImage: AssetImage('assets/naruto.png'),
                radius: 50,
              ),
            ),

            Divider(
              height: 60,
              color: Colors.blueGrey[700],
            ),

            Text(
              'NAME',
              style: TextStyle(
                color: Colors.blueGrey[400],
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Naruto Uzumaki',
              style: TextStyle(
                color: Colors.amber[400],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 30),

            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.blueGrey[400],
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10),

            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amber[400],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 30),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[400],
                ),

                SizedBox(width: 10),

                Text(
                  'uzumakinaruto@hiddenleaf.co.fr',
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      letterSpacing: 1,
                      fontSize: 18,
                  ),
                ),
              ],
            ),

            Divider(
              height: 60,
              color: Colors.blueGrey[700],
            ),
          ],
        ),
      ),
    );
  }
}


