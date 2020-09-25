import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smtutorial/provider/checkbox_provider_screen.dart';
import 'package:smtutorial/provider/drinks_provider.dart';
import 'package:smtutorial/setState/checkbox_setState_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider tutorial - Flutter Explained',
      theme: ThemeData.light().copyWith(primaryColor: Color(0xFF15AF48)),
      // TODO 5: Register the ChangeNotifierProvider
      // TODO 6: add a create method and create a instance of DrinksProvider
      home: ChangeNotifierProvider(
        create: (_) => DrinksProvider(),
        child: CheckboxProviderScreen(),
      ),
    );
  }
}
