import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map? ?? {};     // Handle null case for ModalRoute and arguments
    print(data);

    String backImage = data['isDay'] ? 'ai_dayPic.avif' : 'nightTime.webp';

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('resources/$backImage'),
            fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () async{
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'isDay': result['isDay'],
                        'flag': result['flag']
                      };
                      });
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                  style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 16, 1, 47), 
                  ),
                ),

                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data['location'],
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0
                    ),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0
                  ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
