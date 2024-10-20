import 'package:flutter/material.dart';
import 'package:time_the_world/utility/world_time.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  List<WorldTime> locate = [
    WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'Tunis.png'),
    WorldTime(url: 'Africa/Nigeria', location: 'Nigeria', flag: 'Nigeria.webp'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'nairobi.webp'),
    WorldTime(url: 'Africa/Windhoek', location: 'Windhoek', flag: 'windoek.jpg'),
    WorldTime(url: 'America/Detroit', location: 'Detroit', flag: 'detroit.gif'),
    WorldTime(url: 'America/Los_Angeles', location: 'Los_Angeles', flag: 'Los Angeles.png'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico_City', flag: 'Mexico.webp'),
    WorldTime(url: 'Antarctica/Macquarie', location: 'Macquarie', flag: 'antarctica.webp'),
    WorldTime(url: 'Antarctica/Palmer', location: 'Palmer', flag: 'palmer.jpg'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'Bangkok.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'london.jpg'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'Berlin.png'),
    WorldTime(url: 'Indian/Mauritius', location: 'Mauritius', flag: 'Mauritius.jpg'),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'Paris.jpg'),
    WorldTime(url: 'Pacific/Tahiti', location: 'Tahiti', flag: 'Tahiti.png'),
    WorldTime(url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'South Africa.jpg')
  ];

  void changeTime(index) async {
    WorldTime ins = locate[index];
    await ins.getTime();
    // go to home screen
    Navigator.pop(context, {
      'location': ins.location,
      'flag': ins.flag,
      'time': ins.time,
      'isDay': ins.dayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 196, 196),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        title: Text(
          'Choose a Location',
          style: TextStyle(color: Colors.white), 
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locate.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              color: Colors.grey[850], 
              child: ListTile(
                onTap: () {
                  changeTime(index);
                },
                title: Text(
                  locate[index].location,
                  style: TextStyle(color: Colors.white), 
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('resources/${locate[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
