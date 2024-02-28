import 'package:flutter/cupertino.dart';

enum Language { en, ru, uz }
final languageConttroller = AppLanguage();
class AppLanguage with ChangeNotifier {
  String _getapplanguage = 'uz';

  Locale get getapplanguage => _getapplanguage == Language.uz.name
      ? const Locale('uz' 'UZ')
      : _getapplanguage == Language.ru.name
          ? const Locale('ru', 'RU')
          : const Locale('en', 'US');
  
  void changeLanguage(Language language) {
    _getapplanguage = language.name;
    notifyListeners();
  }
}

