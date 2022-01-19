part of 'pages.dart';

class WellcomePage extends StatelessWidget {
  //menentukan controller inputan
  var _userController = new TextEditingController();
  var _emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              Image.asset(
                'assets/images/m7.jpg',
                height: 333,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Welcome",
                  style: dangerTextStyle,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "UAS Pemograman Mobile Yosi Mughni Swandaru ",
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 51,
              ),
              // Container(
              //   height: 60,
              //   width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: Text('Create Account',
              //         style: whiteTextStyle.copyWith(
              //             fontSize: 20,
              //             fontWeight: FontWeight.w500,
              //             color: primaryColor)),
              //     style: ElevatedButton.styleFrom(
              //         primary: secondaryColor,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(17))),
              //   ),
              // ),
              TextFormField(
                style: whiteTextStyle.copyWith(
                    fontSize: 11, color: secondaryColor),
                controller: _userController,
                decoration: InputDecoration(
                    hintText: 'Input Username', fillColor: Colors.white),
              ),
              TextFormField(
                style: whiteTextStyle.copyWith(
                  fontSize: 11,
                  color: secondaryColor,
                ),
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'Input email', focusColor: whiteColor),
              ),

              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                  onPressed: () {
                    /*berpindah antar halaman dengan cara memanggil halaman yang dituju
                  * halaman yang dituju adalah halaman pagegetdata dimana isi dari getpagedata
                  * mengambil data dari controller yang ada di usermodel yaitu dengan mencocokkan
                  * controller yang ada dengan inputan yang diinputkan pada controller inputan
                  * kemudian akan dipindahkan dengan Navigator.of(context).push(route)
                  */
                    var route = new MaterialPageRoute(
                        builder: (BuildContext context) => MyHomePage(
                              value: UserModel(
                                  username: _userController.text,
                                  email: _emailController.text),
                            ));
                    Navigator.of(context).push(route);
                  },
                  child: Text('Login',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor)),
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: secondaryColor, width: 3),
                          borderRadius: BorderRadius.circular(17))),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Center(
                child: Text(
                  "powerred by Yosi Mughni swandaru 1119101697 @2022",
                  style: whiteTextStyle.copyWith(
                      fontSize: 11, color: secondaryColor),
                ),
              ),
              SizedBox(
                height: defaultMargin,
              )
            ],
          ),
        ),
      ),
    );
  }
}
