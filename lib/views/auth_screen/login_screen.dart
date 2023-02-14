import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../consts/lists.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/our_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,// permet que l'écran ne s'adapte pas quand l'utilisateur doit écrire
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox, //
                applogoWidget(),
                10.heightBox,
                const Text("Log in $appname",style: TextStyle(
                  fontFamily: bold,
                  color: Colors.white,
                  fontSize: 18
                ),),
                10.heightBox,
                Column(
                  children: [
                    customTextField(hint: emailHint,title: email),
                    customTextField(hint: passwordHint,title: password),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(forgotPassword)),
                    ),
                    5.heightBox,
                    ourButton(color: redColor,textColor: Colors.white,title: login, onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    }).box.width(context.screenWidth -50).make(),
                    const Text(createNewAccount,style: TextStyle(
                      color: fontGrey,
                    ),),
                    5.heightBox,
                    ourButton(color: lightGolden,textColor: Colors.white,title: signup, onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignupScreen()));
                    }).box.width(context.screenWidth -50).make(),
                    10.heightBox,
                    const Text(loginWith,style: TextStyle(color: fontGrey),),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                        List.generate(socialIconList.length, (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(socialIconList[index]),
                          ),
                        ))
                      ,
                    )
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make()
              ],
            ),
          ),
      ),
    );
  }
}
