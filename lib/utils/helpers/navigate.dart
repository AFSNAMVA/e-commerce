import 'package:flutter/material.dart';

class Navigate {
  Navigate._();

static void  to(BuildContext context, Widget page) => Navigator.push(context, MaterialPageRoute(
      builder: (context) =>  page,
      
    ));


static void  removeAll(BuildContext context, Widget page) => Navigator.pop(context, MaterialPageRoute(
      builder: (context) =>  page,
      
    ));


    static void replace(BuildContext context, Widget page) => Navigator.pushReplacement(context, MaterialPageRoute(
      
      builder: (context) =>  page,
      
    ));
}
