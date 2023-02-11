import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

import '../widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg,width: 300,)),//background
              20.heightBox,
              applogoWidget(),
              const SizedBox(
                height: 10,
              ),
              const Text(appname,style: TextStyle(
                  fontFamily: bold,
                  fontSize: 22,
                  color: Colors.white
              )),
              const SizedBox(
                height: 5,
              ),
              const Text(appversion,style: TextStyle(
                  color: Colors.white
              )),
              const Spacer(),
              const Text(credits,style: TextStyle(
                color: Colors.white
              ),),
              30.heightBox,
          ],
        ),
      ),
    );
  }
}
