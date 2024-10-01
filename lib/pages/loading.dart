import 'package:flutter/material.dart';
import 'package:time_the_world/utility/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});


  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void configWorldTime() async {

    WorldTime inst = WorldTime(location: 'Johannesburg', flag: 'flag', url: 'Africa/Johannesburg');
    await inst.getTime(); // wait till response is gotten

    Navigator.pushNamed(context, '/home');
  } 



  @override
  void initState() {
    super.initState();
    configWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading'),
        ),
    );
  }
} 