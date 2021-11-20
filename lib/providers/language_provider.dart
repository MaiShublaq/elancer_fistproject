import 'package:elancer_fistproject/screens/prefs/shared_pref_controller.dart';
import'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String language=SharedPrefController().language;
  void changeLanguage(){
    language= language=='en'?'ar':'en';
    SharedPrefController().changeLanguage(lang:language);
    this.language=language;
    notifyListeners();
  }


}