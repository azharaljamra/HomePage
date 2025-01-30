import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(ProductScreen());
}

class ProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: HomePage(),

    );
  }


}

