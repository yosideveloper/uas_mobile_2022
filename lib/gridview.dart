// GridView Flutter
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: GridNih(title: 'Epic Page'),
    );
  }
}

class GridNih extends StatefulWidget {
  GridNih({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _GridNihState createState() => _GridNihState();
}

class _GridNihState extends State<GridNih> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the GridNih object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.only(top: 50),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image(
                    width: 120.0,
                    image: AssetImage(
                      //gambar cover
                      'assets/images/1.jpg',
                    )),
                Text("Berita Utama Stikom.com Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                    width: 120.0,
                    image: AssetImage(
                      //gambar cover
                      'assets/images/2.jpg',
                    )),
                Text("Berita Utama Stikom.com Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                    width: 120.0,
                    image: AssetImage(
                      //gambar cover
                      'assets/images/3.jpg',
                    )),
                Text("Berita Utama Stikom.com Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                    width: 120.0,
                    image: AssetImage(
                      //gambar cover
                      'assets/images/4.jpg',
                    )),
                Text("Berita Utama Stikom.com Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                    width: 120.0,
                    image: AssetImage(
                      //gambar cover
                      'assets/images/5.jpg',
                    )),
                Text("Berita Utama Stikom.com Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue))
              ],
            ),
            Column(
              children: <Widget>[
                Image(
                    width: 120.0,
                    image: AssetImage(
                      //gambar cover
                      'assets/images/6.jpg',
                    )),
                Text("Berita Utama Stikom.com Tv",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue))
              ],
            ),
          ],
        ));
  }
}
