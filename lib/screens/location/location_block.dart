import 'package:rxdart/rxdart.dart';

class LocationBlock {
  BehaviorSubject<List<String>> citiesList = BehaviorSubject<List<String>>();
  List<String> cities =[];
  void getCities() {
    cities = <String>[
      'Ahmedabad',
      'Surat',
      'Vadodara',
      'Rajkot',
      'Gandhinagar',
      'Jamnagar',
      'Bhavnagar',
      'Junagadh',
      'Porbandar',
      'Anand',
      'Mehsana',
      'Bharuch',
      'Patan',
      'Palanpur',
      'Morbi',
      'Valsad',
      'Amreli',
      'Jetpur',
      'Gondal',
      'Kalol',
      'Deesa',
      'Bhuj',
      'Palitana',
    ];
    citiesList.sink.add(cities);
  }

  void searchCities(String text){
    List<String> filterCities =[];
    for (int i = 0; i <cities.length; i++) {
      if(cities[i].toLowerCase().contains(text)){
        filterCities.add(cities[i].toString());
        citiesList.sink.add(filterCities);
      }
    }
  }
}
