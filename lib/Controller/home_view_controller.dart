import 'package:hack2k19/Classes/meetup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeViewController {
  // API Call for getting Events
  Future<List<Meetup>> getData() async {
    List<Meetup> meetups = List<Meetup>();
    String apiUrl = 'http://firstoffer.co.in/flutter/demo_api.php';

    // Http Request
    http.Response response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      for (int i = 0; i < data.length; i++) {
        meetups.add(Meetup(
          id: data[i]['Id'],
          location: data[i]['Location'],
          dateTime: data[i]['DateTime'],
          image: data[i]['Image'],
          aboutMeet: data[i]['aboutMeet'],
          title: data[i]['Tittle'],
          type: data[i]['Type'],
          noOfParticipants: data[i]['NumberParticipants'],
          sourceName: data[i]['SourceName'],
          sourceImage: data[i]['SourceImage'],
        ));
      }
    }
    return meetups;
  }
}
