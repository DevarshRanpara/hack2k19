import 'package:hack2k19/Classes/meetup.dart';
import 'package:http/http.dart' as http;

class HomeViewController {
  Future<List<Meetup>> getData() async {
    List<Meetup> meetups = List<Meetup>();
    String apiUrl =
        'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson';

    http.Response response = await http.get(apiUrl);
    if(response.statusCode == 200){
      
    }
    return meetups;
  }
}
