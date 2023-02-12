import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // création d'une méthode pour changer d'écran
  changeScreen(){
    Future.delayed(Duration(microseconds: 0 ), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  //à l'initialisation de la class on appel la méthode ChangeScreen
  @override
  void initState() {
    changeScreen();
    super.initState();
  }
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
