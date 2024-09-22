import 'package:flutter/material.dart';


class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});


  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  void getData() async{

    //network simulation request for username
    String name = await Future.delayed(Duration(seconds: 3), () {
        return 'Nwabo';

    });

     //network simulation request for username
    String about = await Future.delayed(Duration(seconds: 2), () {
        return 'meat, alcohol, water, and Software Engineer';

    });

    print("The statement");
    print('$name and $about');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hey There!!!');
  }

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