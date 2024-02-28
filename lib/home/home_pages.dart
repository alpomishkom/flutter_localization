import 'package:flutter/material.dart';
import 'package:flutter_logalization/core/localiation/words.dart';
import 'package:flutter_logalization/settings/local_conttroller.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              languageConttroller.changeLanguage(Language.uz);
              Navigator.pushReplacementNamed(context, 'detail');
            },
            child: const Text('uz'),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              languageConttroller.changeLanguage(Language.ru);
              Navigator.pushReplacementNamed(context, 'detail');
            },
            child: const Text('ru'),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              languageConttroller.changeLanguage(Language.en);
              Navigator.pushReplacementNamed(context, 'detail');
            },
            child: const Text('en'),
          ),
        ],
      ),
    ));
  }
}
