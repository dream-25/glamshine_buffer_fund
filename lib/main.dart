import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:glamshinebufferfund/user/screens/auth/login.dart';
import 'package:glamshinebufferfund/user/screens/home/home.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'Glamshine Buffer Fund',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: PageRoutes.userRootRoute,
        routes: {
          PageRoutes.userRootRoute: (context) => const CommonSplash(),
          PageRoutes.userSplashRoute: (context) => const CommonSplash(),
          PageRoutes.userLoginRoute: (context) => const UserLogin(),
          PageRoutes.userHomeRoute: (context) => const UserHomePage(),
        });
  }
}
