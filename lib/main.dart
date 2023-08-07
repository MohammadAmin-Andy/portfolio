import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
        _getIcons(),
        SizedBox(height: 15),
        _getSkills(),
        SizedBox(height: 15),
      ],
    );
  }
}

Widget _getSkills() {
  var skill_list = ['Dart', 'Flutter'];
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

Widget _getIcons() {
  return Wrap(
    children: [
      IconButton(
        splashRadius: 25,
        onPressed: () {
          launchUrl(Uri.parse('https://github.com/MohammadAmin-Andy'),
              mode: LaunchMode.inAppWebView);
        },
        icon: Image.asset('icons/github.png'),
        splashColor: Colors.black,
      ),
      IconButton(
        splashRadius: 25,
        onPressed: () async {
          const url =
              'https://www.linkedin.com/in/mohammad-amin-amirkolaei-andy-588448239/'; //flutter.dev");
          await launch(url);
        },
        icon: Image.asset('icons/linkedin.png'),
        splashColor: Color.fromARGB(255, 0, 74, 135),
      ),
      IconButton(
        splashRadius: 25,
        onPressed: () async {
          const url = 'pg.mohammadmain@gmail.com'; //flutter.dev");
          await launch(url);
        },
        icon: Image.asset('icons/gmail.png'),
        splashColor: Color.fromARGB(255, 195, 7, 7),
      ),
      IconButton(
        splashRadius: 25,
        onPressed: () async {
          const url = 'https://t.me/real_Mamin'; //flutter.dev");
          await launch(url);
        },
        icon: Image.asset('icons/telegram.png'),
        splashColor: Color.fromARGB(255, 16, 116, 198),
      ),
      IconButton(
        splashRadius: 25,
        onPressed: () async {
          const url = 'https://twitter.com/MohammadAmin_pg'; //flutter.dev");
          await launch(url);
        },
        icon: Image.asset('icons/twitter.png'),
        splashColor: Color.fromARGB(255, 16, 116, 198),
      ),
      IconButton(
        splashRadius: 25,
        onPressed: () async {
          const url =
              'https://join.skype.com/invite/g0b7X6fUIJ6u'; //flutter.dev");
          await launch(url);
        },
        icon: Image.asset('icons/skype.png'),
        splashColor: Color.fromARGB(255, 5, 112, 227),
      ),
      IconButton(
        splashRadius: 25,
        onPressed: () async {
          const url =
              'https://open.spotify.com/user/31nzb5buqmpfyxtcusyqvajoxunu'; //flutter.dev");
          await launch(url);
        },
        icon: Image.asset('icons/spotify.png'),
        splashColor: Color.fromARGB(255, 45, 214, 7),
      ),
    ],
  );
}
