import 'package:flutter/cupertino.dart';
import 'package:flutter_logalization/core/localiation/app_local.dart';

extension Worker on Words {
  String tr(BuildContext context) => TrLocation.of(context).tr(name);
}

enum Words {
  hello
}