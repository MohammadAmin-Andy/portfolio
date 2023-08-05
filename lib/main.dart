import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Soraya'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppBar(),
        //body: ,
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 29, 81, 14),
      elevation: 10,
      centerTitle: true,
      title: Text(
        'درباره‌ی محمدامین امیرکلائی اندی',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 19.0,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
