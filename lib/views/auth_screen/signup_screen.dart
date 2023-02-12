import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,// permet que l'écran ne s'adapte pas quand l'utilisateur doit écrire
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
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
                  customTextField(hint: nameHint,title: name),
                  customTextField(hint: emailHint,title: email),
                  customTextField(hint: passwordHint,title: password),
                  customTextField(hint: passwordHint,title: retypePassword),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(forgotPassword)),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: redColor,
                        value: false,
                        onChanged: (newValue) {},
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(text: const TextSpan(
                          children: [
                            TextSpan(text: "I agree to the ", style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey
                            )),
                            TextSpan(text: termAndCond, style: TextStyle(
                                fontFamily: bold,
                                color: redColor
                            )),
                            TextSpan(text: " & ", style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey
                            )),
                            TextSpan(text: privacyPolicy, style: TextStyle(
                                fontFamily: bold,
                                color: redColor
                            )),
                          ]
                        )),
                      )
                    ],
                  ),
                  5.heightBox,
                  ourButton(color: redColor,textColor: Colors.white,title: signup, onPress: () {}).box.width(context.screenWidth -50).make(),
                  5.heightBox,
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: RichText(
                      text: const TextSpan(
                        children:[
                          TextSpan(
                            text: alreadyHaveAccount,
                            style: TextStyle(fontFamily: bold,color: fontGrey)
                          ),
                          TextSpan(
                              text: login,
                              style: TextStyle(fontFamily: bold,color: redColor)
                          ),
                        ]
                      ),
                    ),
                  )
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make()
            ],
          ),
        ),
      ),
    );
}}
