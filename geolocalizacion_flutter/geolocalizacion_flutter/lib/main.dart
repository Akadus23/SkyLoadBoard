import 'package:flutter/material.dart';
import 'app/ui/pages/home/home_page.dart';
import 'package:geolocalizacion_flutter/app/ui/routes/routes.dart';
import 'package:geolocalizacion_flutter/app/ui/routes/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.SPLASH,
      routes: appRoutes(),
    );
  }
}
