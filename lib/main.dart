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
        backgroundColor: Color.fromARGB(255, 233, 233, 190),
        appBar: _getAppBar(),
        body: _getMainContect(),
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

  Widget _getMainContect() {
    return SingleChildScrollView(
      child: Column(
        children: [_getheader()],
      ),
    );
  }

  Widget _getheader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/profile.jpg'),
            radius: 80.0,
          ),
        ),
        SizedBox(height: 15),
        Text(
          " (((': سلام من محمدامینم برنامه نویس جونیور فلانر",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 10),
        Text(
          'من علاقه مند به مباحث کامپیوتر، برنامه نویس و تِک هستم',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        _getSkills(),
        SizedBox(height: 15),
      ],
    );
  }
}

Widget _getSkills() {
  var skill_list = ['flutter'];
  return Wrap(
    children: [
      for (var skill in skill_list)
        Card(
          elevation: 10,
          shadowColor: Color.fromARGB(255, 3, 146, 255),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'images/$skill.png',
                  height: 120,
                  width: 120,
                ),
              ),
              Text('$skill')
            ],
          ),
        ),
    ],
  );
}
