import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
    cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        focusedBorder: addborder(kPrimaryColor),
        enabledBorder: addborder(),
        border: addborder(),

      ),
    );
  }

  OutlineInputBorder addborder([color]) {
    return OutlineInputBorder(
      
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          
          color: color ?? Colors.white 
        )
      );
  }
}