import 'package:flutter/material.dart';
import 'package:flutter_application/screens/converter.dart';
import 'package:flutter_application/screens/dashboard.dart';
import 'package:flutter_application/screens/fruit.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/dashboard': (BuildContext context) => const Dashboard(),
    '/converter': (BuildContext context) => const Converter(),
    '/fruit': (BuildContext context) => const Fruit()
  };
}
