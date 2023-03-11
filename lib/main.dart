import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjalevel = 0;
int counter = 0;
  List<String> level = [
    'Rookie',
    'Elite',
    'Pro',
    'Master',
    'GrandMaster',
    'Legendary'
  ];
void checkList()
{

    if(counter>5) {
      counter = 0;
    }
    else{
      counter+=1;
    }
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:  AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        splashColor: Colors.amberAccent,
      ),
      body: Padding(
        padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/shaf.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color:Colors.amberAccent,
            ),
            Center(
              child: TextButton(
                onPressed: checkList,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child: Text('${level[counter]}'),

              )
            ),
            SizedBox(height:10.0),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text(
                'Shafna Navas',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30.0),
            Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                '$ninjalevel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height:30.0),
            Row(
              children: [
                Icon(Icons.email,
                color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text(
                  'shafnanava@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                ),
              ],
            )
        ],
      )
      ),
    );
  }
}



