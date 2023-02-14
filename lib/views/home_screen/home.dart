import 'dart:ffi';

import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/cart_screen/cart_screen.dart';
import 'package:emart_app/views/category_screen/category_screen.dart';
import 'package:emart_app/views/home_screen/home_screen.dart';
import 'package:emart_app/views/profil_screen/profil_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../consts/images.dart';
import '../../consts/strings.dart';
import '../../controllers/home.pods.dart';


class Home extends ConsumerWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final nav = ref.watch(homeControllerProvider);

    var navbarItems = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26),label: category),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26),label: account),
    ];

    var navbarBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfilScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(child: navbarBody.elementAt(nav))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: nav,
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: navbarItems,
        onTap: (value) {
          ref.read(homeControllerProvider.notifier).set(value);
        },
      ),
    );
  }
}
