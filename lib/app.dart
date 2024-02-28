import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_logalization/core/localiation/app_local.dart';
import 'package:flutter_logalization/home/detail_pages.dart';
import 'package:flutter_logalization/home/home_pages.dart';
import 'package:flutter_logalization/settings/inherited_locale.dart';
import 'package:flutter_logalization/settings/local_conttroller.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  InheritedLocalNotifier(
      localCattroler: languageConttroller,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: InheritedLocalNotifier.mybeOf(context)?.getapplanguage ?? const Locale('ru', 'RU'),
            supportedLocales: const [
              Locale("uz", "UZ"),
              Locale("en", "US"),
              Locale("ru", "RU"),
            ],
            localizationsDelegates: const [
              TrLocation.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            initialRoute: '/',
            routes: {
              '/': (context) => const HomePages(),
              'detail': (context) => const DetailPages(),
            },
          );
        }
      ),
    );
  }
}
