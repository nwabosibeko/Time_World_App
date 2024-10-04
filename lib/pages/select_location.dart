import 'package:flutter/material.dart';
import 'package:time_the_world/utility/world_time.dart';


class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});


  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  List<WorldTime> locate = [WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: ''), 
                            WorldTime(url: 'Africa/Nigeria', location: 'Nigeria', flag: ''),
                            WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: ''),
                            WorldTime(url: 'Africa/Windhoek', location: 'Windhoek', flag: ''),
                            WorldTime(url: 'America/Detroit', location: 'Detroit', flag: ''),
                            WorldTime(url: 'America/Los_Angeles', location: 'Los_Angeles', flag: ''),
                            WorldTime(url: 'America/Mexico_City', location: 'Mexico_City', flag: ''),
                            WorldTime(url: 'Antarctica/Macquarie', location: 'Macquarie', flag: ''),
                            WorldTime(url: 'Antarctica/Palmer', location: 'Palmer', flag: ''),
                            WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: ''),
                            WorldTime(url: '', location: '', flag: ''),
                            WorldTime(url: '', location: '', flag: ''),
                            WorldTime(url: '', location: '', flag: ''),
                            WorldTime(url: '', location: '', flag: ''),
                            WorldTime(url: '', location: '', flag: ''),
                            WorldTime(url: '', location: '', flag: ''),];


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