import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:uikit/helpers/routes.dart';

import 'pages/splaschscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'herry ui kit',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      getPages: allRouteJourney,
      home: const SplasScreenCommerce(),
    );
  }
}
