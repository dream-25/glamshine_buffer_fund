import 'package:flutter/material.dart';
import 'package:glamshinebufferfund/routes/routes.dart';

class CommonSplash extends StatefulWidget {
  const CommonSplash({Key? key}) : super(key: key);

  @override
  State<CommonSplash> createState() => _CommonSplashState();
}

class _CommonSplashState extends State<CommonSplash> {
  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  navigateToNextPage() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushNamed(context, PageRoutes.userLoginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.50,
            child: Image.asset("assets/images/app_logo_no_bg.png")),
      ),
    );
  }
}
