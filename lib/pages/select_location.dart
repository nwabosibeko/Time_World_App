import 'package:flutter/material.dart';


class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});


  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 75, 74, 74),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 55, 131),
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('select location screen'),
    );
  }
}