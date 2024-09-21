import 'package:flutter/material.dart';


class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});


  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

   int counter = 0;
  @override
  void initState() {
    super.initState();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 75, 74, 74),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 55, 131),
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}