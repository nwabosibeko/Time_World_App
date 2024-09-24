import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});


  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

    void getTime() async{

     try{
         Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/Africa/Johannesburg"));
         if (response.statusCode == 200){

          Map timeData = jsonDecode(response.body);
          //print(timeData);

          String timeDate = timeData['datetime'], offset = timeData['utc_offset'].toString().substring(1,3);// print data
          // print(timeDate);
          // print(offset);

          DateTime present = DateTime.parse(timeDate);// convert it into a date time objecct.
          present = present.add(Duration(hours: int.parse(offset)));
          print(present);

         }
         else{print('Response has failed due to this code: {$response.statusCode}');}
     }
     catch (e){
        print("ERROR: $e");
     }

      // final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1'); //converting the URL to URI object.

      //   try {
      //     Response res = await get(url); // GET request using URI.

      //     if (res.statusCode == 200) { //checking if request was successful.

      //         Map data = jsonDecode(res.body); //converting the JSON string into working data.
      //         print(data);
      //         print(data['title']);

      //     } else {
      //       print('Request failed with status: ${res.statusCode}.'); //checking failed status Code.
      //     }
      //   } catch (e) {
      //     print('Error: $e');
      //   }


  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
} 