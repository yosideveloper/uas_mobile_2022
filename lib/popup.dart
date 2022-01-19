import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bottom_popup_menu_button/bottom_popup_menu_button.dart';

void main() {
  runApp(MyAppku());
}

class UserTag {
  final String name;

  UserTag({required this.name});
}

class UserTile extends StatelessWidget {
  final UserTag tag;

  const UserTile({Key? key, required this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(tag.name),
      trailing: CircleAvatar(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFiyH2SE52qzOFfDJ8GDzv8mgmOEkRb9RdyA&usqp=CAU',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MyAppku extends StatefulWidget {
  @override
  _MyAppkuState createState() => _MyAppkuState();
}

class _MyAppkuState extends State<MyAppku> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await BottomPopupMenuButton.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  List<BottomPopupMenuEntry<UserTag>> userTagsList(List<UserTag> tags) {
    return List.generate(
        tags.length,
        (index) => BottomPopupMenuItem(
            value: tags[index],
            child: UserTile(
              tag: tags[index],
            )));
  }

  List<UserTag> tags = [
    UserTag(name: 'alyona'),
    UserTag(name: 'ismail'),
    UserTag(name: 'alex'),
    UserTag(name: 'raha'),
    UserTag(name: 'alyona'),
    UserTag(name: 'ismail'),
    UserTag(name: 'alex'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: BottomPopupMenuButton(
                position: RelativeRect.fromLTRB(0, 0, 150, 0),
                itemBuilder: (context) => userTagsList(tags))),
      ),
    );
  }
}
