import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gladiator_adventureresort/view/loginscreen.dart';
import 'package:gladiator_adventureresort/view/registerScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;
  late Timer _timer; // = const Duration(seconds: 3);
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/images/5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: SizedBox(
                  height: 60,
                  width: 300,
                  child: TextButton(
                    child: const Text(
                      'GETTING STARTED',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 44, 0, 204),
                        backgroundColor: Color.fromARGB(255, 214, 205, 205),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        padding: const EdgeInsets.all(15),
                        textStyle: const TextStyle(
                            fontSize: 35, fontStyle: FontStyle.italic)),
                    onPressed: () {
                      Navigator.push<Widget>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterAccountScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Have an account?',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          decorationThickness: 22,
                          fontSize: 20,
                          color: Color.fromARGB(255, 44, 0, 204)),
                    ),
                    onPressed: () {
                      Navigator.push<Widget>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              //SizedBox(height: 20),
            ]),
      ),
    );
  }
}
