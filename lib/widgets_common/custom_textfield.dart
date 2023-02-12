import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextField({String? title,String? hint,controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title!,style: const TextStyle(
        color: redColor,
        fontFamily: semibold,
        fontSize: 16,
      ),),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: redColor))
        ),
      ),
      5.heightBox,
    ],
  );
}