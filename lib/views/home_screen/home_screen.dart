import 'package:card_swiper/card_swiper.dart';
import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: redColor,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  hintText:searchanything,
                  hintStyle: TextStyle(color:  textfieldGrey),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              width: context.screenWidth - 20,
              child: Swiper(
                autoplay: true,
                itemHeight: 150,
                itemWidth: context.screenWidth-70,
                itemCount: brandsList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Image.asset(brandsList[index],
                      fit: BoxFit.fill,
                      ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
