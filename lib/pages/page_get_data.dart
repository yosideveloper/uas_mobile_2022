//import package dan model
import 'package:flutter/material.dart';
import 'package:popup/model/model_user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageGetData extends StatefulWidget {
  //variavel
  final UserModel value;

  //key
  PageGetData({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  _PageGetDataState createState() => _PageGetDataState();
}

class _PageGetDataState extends State<PageGetData> {
  final double coverHeight = 380;
  final double profileHeight = 244;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          // tombol(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - 140;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
        Positioned(
          left: 120.0,
          top: 450.0,
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
            onPressed: () {},
            child: Text(
              "Ganti Profile",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ZenKurenaido",
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            '' + widget.value.username,
            style: TextStyle(fontSize: 28, fontFamily: "MochiyPopOne"),
          ),
          const SizedBox(height: 8),
          Text(
            'Developer and designer ',
            style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: ""),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.slack),
              const SizedBox(height: 12),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(height: 12),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(height: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin),
            ],
          ),
          const SizedBox(height: 8),
          Positioned(
            bottom: 50.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "MochiyPopOne",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 16.0, right: 16.0, bottom: 8.0),
                    child: Text(
                      "  Layout adalah wadah yang digunakan untuk pengaturan posisi kontrol (view, atau layout lain). Ada beberapa macam layout yaitu:  ",
                      style: TextStyle(fontFamily: "ZenAntique", fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 16.0, right: 16.0, bottom: 32.0),
                    child: Text(
                      "1. StackLayout: mengatur kontrol secara horisontal atau vertikal."
                      "                            2. AbsoluteLayout: pengaturan posisi berdasarkan letak yang pasti."
                      "                       3. RelativeLayout: pengaturan posisi kontrol berdasarkan kontrol yang lain."
                      "                       4. Grid: membuat layout yang terdiri dari kolom dan baris seperti tabe ",
                      style:
                          TextStyle(fontFamily: "ZenKurenaido", fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 16.0, right: 16.0, bottom: 25.0),
            child: Text("Powered by : Yosi Mughni Swandaru "),
          ),
        ],
      );
  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          //gambar cover
          'assets/images/meta.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey,
        backgroundImage:
            AssetImage('assets/images/profile.jpg'), //gambar profile
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(child: Icon(icon, size: 32)),
      );
}















//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ambil Data'),
//         backgroundColor: Colors.blue,
//       ),
//       body: new Container(
//         child: new Center(
//           child: new Column(
//             children: <Widget>[
//               Padding(
//                 child: new Text(
//                   'Data Terambil',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 20.0),
//               ),
//               /*
//               * menampilkan data yang diinputkan pada halaman pagepassingvalue
//               * ditampilkan dengan memanggil widget.value. ....
//                */
//               Padding(
//                 child: new Text(
//                   'username: ' + widget.value.username,
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 padding: EdgeInsets.all(10.0),
//               ),
//               Padding(
//                 child: new Text(
//                   'email: ' + widget.value.email,
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 padding: EdgeInsets.all(10.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
