import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home.pods.g.dart';



@riverpod
class HomeController extends _$HomeController{
  int _selectedIndex = 0;

  @override
  int build() => _selectedIndex ;

   int get() {
    return _selectedIndex;
  }

  void set(int value) {
     state = value;
     _selectedIndex = state;
  }
}