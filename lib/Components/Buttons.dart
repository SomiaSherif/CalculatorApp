import 'dart:io';
import 'package:flutter/material.dart';

Button({String name,Function action})=>
   MaterialButton(
      onPressed: action,
      color: Colors.black12,
      child: Text(name,
        style:
        TextStyle(color: Colors.white,
          fontSize: 30, )

      ),
   );