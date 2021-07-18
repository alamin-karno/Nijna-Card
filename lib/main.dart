import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxTyYeCbYlayBm3B3AYcTwmm9ZhZSvFxdC_Q&usqp=CAU'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 50.0,
              thickness: 1.5,
              color: Colors.grey[850],
            ),
            Text("NAME",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),),
            SizedBox(height: 5.0,),
            Text("Md. Al-Amin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 25.0,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 30.0,),
            Text("NIJNA LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 5.0,),
            Text("$ninjaLevel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 25.0,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text("email@example.com",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

