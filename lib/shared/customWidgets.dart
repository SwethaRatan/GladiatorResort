import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:login_app/shared/colors.dart';

class CustomWidgets {
  static getActionButtons(
      String text, double fontSize, void Function()? onTap) {
    return InkWell(onTap: onTap, child: Container());
  }

  static getAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.green,
      automaticallyImplyLeading: false,
      title: Column(
        children: const [
          Center(
            child: Text(
              'Gladiator Adventure Resort',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'EBGaramond',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PageTitleText extends StatelessWidget {
  String title;
  PageTitleText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Hurricane',
                  letterSpacing: 8.0,
                  wordSpacing: 4.0),
            ),
          ]),
    );
  }
}

class CategoryButtonStyle extends StatelessWidget {
  String name;
  CategoryButtonStyle({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 55,
              width: size.width * 0.78,
              child: TextButton(
                child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Color.fromARGB(255, 233, 233, 233),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.all(15),
                    textStyle: const TextStyle(
                        fontSize: 35, fontStyle: FontStyle.italic)),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Under Development')));
                },
              ),
            ),
          ]),
    );
  }
}
