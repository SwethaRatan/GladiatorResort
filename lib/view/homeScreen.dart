import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gladiator_adventureresort/shared/customWidgets.dart';
import 'package:gladiator_adventureresort/view/loginScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomWidgets.getAppBar(),
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/WhiteBGLight.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset('assets/images/Dinner2.png'),
          ),
          Column(
            children: [
              PageTitleText(title: 'Home Screen'),
              SizedBox(height: 50),
              Text(
                'GoodDay Sir/Mam',
                style: GoogleFonts.sacramento(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    wordSpacing: 3.0,
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 20),
              Text(
                'Starter Menu',
                style: GoogleFonts.pacifico(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 28,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              ),
              SizedBox(height: 40),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 55,
                      width: size.width * 0.7,
                      child: TextButton(
                        child: const Text(
                          'Vacay Stay',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Under Development')));
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      width: size.width * 0.7,
                      child: TextButton(
                        child: const Text(
                          'Restaurant',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Under Development')));
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      width: size.width * 0.7,
                      child: TextButton(
                        child: const Text(
                          'Gaming',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Under Development')));
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      width: size.width * 0.7,
                      child: TextButton(
                        child: const Text(
                          'Extra Activities',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Under Development')));
                        },
                      ),
                    ),
                  ]),
            ],
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        elevation: 0.0,
        backgroundColor: Colors.green,
        child: const Icon(Icons.logout),
        onPressed: () {
          Navigator.push<Widget>(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
