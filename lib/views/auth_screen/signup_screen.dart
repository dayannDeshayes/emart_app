import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;

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
                //custom de pour le formulaire
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
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue; // utilisation du setState pour dire que la variable peut changer
                          });
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        //utilisation de RichText qui permet de d'avoir different style de text dans une même phrase
                        child: RichText(text: const TextSpan(
                          children: [
                            TextSpan(text: "I agree to the ", style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey
                            )),
                            TextSpan(text: termAndCond, style: TextStyle(
                                fontFamily: regular,
                                color: redColor
                            )),
                            TextSpan(text: " & ", style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey
                            )),
                            TextSpan(text: privacyPolicy, style: TextStyle(
                                fontFamily: regular,
                                color: redColor
                            )),
                          ]
                        )),
                      )
                    ],
                  ),
                  5.heightBox,
                  ourButton(color: isCheck == true ? redColor : lightGrey,textColor: Colors.white,title: signup, onPress: () {}).box.width(context.screenWidth -50).make(),
                  5.heightBox,
                  //utilisation de gestureDectector qui permet de faire plusieurs action (voir doc) sur un clique ou mouvement utilisateur
                  GestureDetector(
                    //ici sur le clique de l'utilisateur on retour sur la page login
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
