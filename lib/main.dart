import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:cat_facts/cats/cats_page.dart';

import 'cats/cats_history/history_page.dart';
import 'res/colors.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Size get size => MediaQuery.of(navigatorKey.currentContext!).size;

void showError(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: black.withOpacity(0.7),
      textColor: white,
      webShowClose: true,
      fontSize: 18.0);
}

void main() async {
  initializeDateFormatting();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    navigatorKey: navigatorKey,
    home: const CatsPage(),
    initialRoute: '/facts',
    routes: {
      '/facts': (context) => const CatsPage(),
      '/history': (context) => const CatsHistory(),
    },
  ));
}
