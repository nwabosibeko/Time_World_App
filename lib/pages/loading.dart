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
    await inst.getTime();
    print(inst.time);
  } 
  @override
  void initState() {
    super.initState();
    configWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
} 