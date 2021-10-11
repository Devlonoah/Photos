import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 52.h,
      child: TextField(
          decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.zero),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.zero),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(width: 2, color: Colors.red),
        ),
        labelText: hintText,
      )),
    );
  }
}
