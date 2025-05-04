import 'package:flutter/material.dart';
import 'package:time_the_world/utility/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void configWorldTime() async {
    WorldTime inst = WorldTime(location: 'Johannesburg', flag: 'flag', url: 'Africa/Johannesburg');
    await inst.getTime(); // wait till response is gotten

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': inst.location,
      'flag': inst.flag,
      'time': inst.time,
      'isDay': inst.dayTime,
    }); //will push loading route and then replace it.
  }

  @override
  void initState() {
    super.initState();
    configWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Time The World',
              style: TextStyle(
                fontSize: 40.0, 
                color: Colors.white,  
                fontWeight: FontWeight.bold, 
              ),
            ),
            const SizedBox(height: 30.0),  // Space between the title and the logo
            ClipOval(
              child: Image.asset(
                'resources/earth_logo.png', 
                width: 200.0, 
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 60.0),  // Space between the logo and the spinner
            const SpinKitSpinningLines(
              color: Color(0xFF494A4A),
              size: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
