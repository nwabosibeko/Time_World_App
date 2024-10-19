import 'package:flutter/material.dart';
import 'package:time_the_world/utility/world_time.dart';


class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});


  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  List<WorldTime> locate = [WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'Tunis.png'), 
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
                            WorldTime(url: 'Indian/Mauritius', location: 'Mauritius', flag: 'Maurritius.jpg'),
                            WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'Paris.jpg'),
                            WorldTime(url: 'Pacific/Tahiti', location: 'Tahiti', flag: 'Tahiti.png'),];


  @override
  Widget build(BuildContext context) {
    // print('build function ran');
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 75, 74, 74),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 55, 131),
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locate.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(locate[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('resources/${locate[index].flag}'),
              ),
            ),
          );
        },
        ),
    );
  }
}

  // void getData() async{

  //   //network simulation request for username
  //   String name = await Future.delayed(Duration(seconds: 3), () {
  //       return 'Nwabo';

  //   });

  //    //network simulation request for username
  //   String about = await Future.delayed(Duration(seconds: 2), () {
  //       return 'meat, alcohol, water, and Software Engineer';

  //   });

  //   print("The statement");
  //   print('$name and $about');
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  //   print('Hey There!!!');
  // }