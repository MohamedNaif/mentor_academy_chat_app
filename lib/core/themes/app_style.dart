import 'package:flutter/material.dart';
import 'package:mentor_academy/core/themes/app_color.dart';

abstract class AppStyle {
  static TextStyle textStyle18() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppColor.offWhite,
    );
  }

  static TextStyle textStyle42() {
    return const TextStyle(
      fontSize: 42,
      fontWeight: FontWeight.w700,
      color: AppColor.secondaryColor,
    );
  }

  static TextStyle textStyle12() {
    return const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(47, 47, 47, 0.4));
  }

  static TextStyle textStyle19() {
    return const TextStyle(
        fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white);
  }
}
