import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {
  late bool dayTime; //day or night (true or false) will be initiaized later
  String location = ""; //loaction name for UI
  String time = ""; //time in location

  String flag = ""; // url to asset flag icon
  String url = ""; // location url for API endpoint

  WorldTime({required this.location, required this.flag, required this.url});


  Future <void> getTime() async{

     try{
         Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
         if (response.statusCode == 200){

          Map timeData = jsonDecode(response.body);

          String timeDate = timeData['datetime'], offset = timeData['utc_offset'].toString().substring(1,3);// print data


          DateTime present = DateTime.parse(timeDate);// convert it into a date time objecct.
          present = present.add(Duration(hours: int.parse(offset)));

          dayTime = present.hour > 6 && present.hour < 18 ? true : false; //
          time =  DateFormat.jm().format(present);//set time property
         }
         else{print('Response has failed due to this code: {$response.statusCode}');}
     }
     catch (e){
        print("ERROR: $e");

        time = "Could not retrieve time...";
     }


  }

  
}

