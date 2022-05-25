import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'common/screens/splash.dart';
import 'firebase_options.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Glamshine Buffer Fund',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routes: {
          UserRoutes.userrootRoute: (context) => const CommonSplash(),
        });
  }
}
