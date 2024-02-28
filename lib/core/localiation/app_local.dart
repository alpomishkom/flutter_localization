import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class TrLocation {
  final Locale locale;
  TrLocation(this.locale);

  late Map<String,String> __localizationValue;

  static TrLocation of(BuildContext context) => Localizations.of<TrLocation>(context, TrLocation)!;

  Future<TrLocation> load() async {
    final String stringvalue = await rootBundle.loadString("assets/lang/${locale.languageCode}.json");
    Map<String,dynamic> mappjson = jsonDecode(stringvalue) as Map<String,dynamic>;
    __localizationValue = mappjson.map((key, value) => MapEntry(key, value.toString()));
    return this;
  }

  String tr(String key) {
    return __localizationValue[key]!;
  }
  static const LocalizationsDelegate<TrLocation> delegate = _TrLocation();
}


class _TrLocation extends LocalizationsDelegate<TrLocation> {
  const _TrLocation();
  @override
  bool isSupported(Locale locale)   => ['uz','en','ru'].contains(locale.languageCode);

  @override
  Future<TrLocation> load(Locale locale) async => SynchronousFuture<TrLocation>(await TrLocation(locale).load());

  @override
  bool shouldReload(covariant LocalizationsDelegate<TrLocation> old) => false;
  
}