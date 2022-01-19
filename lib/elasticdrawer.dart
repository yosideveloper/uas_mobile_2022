import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:popup/chat.dart';
import 'package:popup/drawermenu.dart';
import 'package:popup/gridview.dart';
import 'package:popup/model/model_user.dart';
import 'package:popup/pages/pages.dart';

import 'pages/page_get_data.dart';

// void main() {
//   runApp(const MyHomePage());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyApp(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  //variavel
  final UserModel value;

  const MyHomePage({
    Key? key,
    required this.value,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.black,
      drawerColor: const Color(0xff123456),
      mainChild: const Center(
        child: Text(
          'Hallo Nama kalian Ada di Profil yaa || swipe aja menu drawer nya ||',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      drawerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(MaterialPageRoute(
                  builder: (context) => PageGetData(value: widget.value)));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Profil You',
                style: TextStyle(
                    color: Color(0xfff4c20d),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  ?.push(MaterialPageRoute(builder: (context) => ChatPage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Message',
                style: TextStyle(
                    color: Color(0xff3cba54),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  ?.push(MaterialPageRoute(builder: (context) => Myappni()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Info',
                style: TextStyle(
                    color: Color(0xffdb3236),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(MaterialPageRoute(
                  builder: (context) => GridNih(
                        title: '',
                      )));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Gallery',
                style: TextStyle(
                    color: Color(0xffdb3236),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xff3cba54));
  }
}

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xfff4c20d));
  }
}

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xffdb3236));
  }
}
