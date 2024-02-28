import 'package:flutter/material.dart';
import 'package:flutter_logalization/core/localiation/words.dart';

import '../settings/local_conttroller.dart';

class DetailPages extends StatelessWidget {
  const DetailPages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text(Words.hello.tr(context)))
    );
  }
}
