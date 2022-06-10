import 'package:rxdart/rxdart.dart';

class LanguageBlock {

  BehaviorSubject<String> selectedLng = BehaviorSubject<String>();

  void selectedLanguage(String lng){
    selectedLng.sink.add(lng);
  }

}