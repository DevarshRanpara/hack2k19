import 'package:hack2k19/Classes/meetup.dart';

class TempData{
  static List<Meetup> data = List<Meetup>();
  static List<Meetup> getData(){
    for(int i=0;i<10;i++){
      data.add(Meetup(
        id: i.toString(),
        location: 'Ahmedabad',
        dateTime: '12:00',
        image: 'https://devicemanagament.000webhostapp.com/userimages/1.jpeg',
        aboutMeet: 'Flutter Meetup',
        title: 'Flutter Meetup',
        type: 'UI Design',
        noOfParticipants: '10',
        sourceImage: 'https://devicemanagament.000webhostapp.com/userimages/1.jpeg',
        sourceName: 'Meetup',
      ));
    }
    return data;
  }
}