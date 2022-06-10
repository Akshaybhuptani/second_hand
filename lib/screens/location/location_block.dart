import 'package:rxdart/rxdart.dart';

class LocationBlock {
  BehaviorSubject<List<String>> citiesList = BehaviorSubject<List<String>>();

  void getCities() {
    List<String> cities = <String>[
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
      'Patan'
      'Palanpur'
      'Morbi'
      'Valsad'
      'Amreli'
      'Jetpur'
      'Gondal'
      'Kalol'
      'Deesa'
      'Bhuj'
      'Palitana'
    ];
    citiesList.sink.add(cities);
  }
}
