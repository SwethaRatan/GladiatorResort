/* import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 93, 202, 97),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Getting Started',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignupScreen.routeName);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(LoginScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

 class Pages extends StatelessWidget {
  final imageUrl;
  Pages({this.imageUrl});
  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[ Image(image: imageUrl)
          //Image.asset('assets/images/1.jpg'),
          //Text(text,textAlign: TextAlign.center,style: TextStyle(
          //  fontSize: 30,fontWeight:FontWeight.bold),),     
        ]
      ),
    );
  }
} 

class Slide {
  final String imageUrl;

  Slide({
    required this.imageUrl,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/1.jpg',
  ),
  Slide(
    imageUrl: 'assets/images/2.jpg',
  ),
  Slide(
    imageUrl: 'assets/images/3.jpg',
  ),
  Slide(
    imageUrl: 'assets/images/4.jpg',
  ),
  Slide(
    imageUrl: 'assets/images/5.jpg',
  ),
];
 */


//PAGE VIEW WORKING CODE
//PageController controller = PageController();
  /* final List<Widget> _list = <Widget>[
    new Center(child: new Pages(imageUrl: 'assets/images/1.jpg')),
    new Center(child: new Pages(imageUrl: 'assets/images/2.jpg')),
    new Center(child: new Pages(imageUrl: 'assets/images/3.jpg')),
    new Center(child: new Pages(imageUrl: 'assets/images/4.jpg')),
    new Center(child: new Pages(imageUrl: 'assets/images/5.jpg'))
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: PageView(
          children: _list,
          scrollDirection: Axis.horizontal,
          //reverse: true,
          //physics: BouncingScrollPhysics(),
          controller: _pageController,

          onPageChanged: (num) {
            setState(() {
              _curr = num;
            });
          },
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FlatButton(
            child: const Text(
              'Getting Started',
              style: TextStyle(fontSize: 20),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(15),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () {
              Navigator.push<Widget>(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterAccountScreen(),
                ),
              );
            },
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Text Button',
            ),
            style: TextButton.styleFrom(
                primary: Colors.purple,
                backgroundColor: Colors.amber,
                textStyle:
                    const TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
          ),
          /* setState(() {
                      _list.add(
                        new Center(
                            child: new Text("New page",
                                style: new TextStyle(fontSize: 35.0))),
                      );
                    });
                    if (_curr != _list.length - 1)
                      controller.jumpToPage(_curr + 1);
                    else
                      controller.jumpToPage(0);
                  }, */
          //child: Icon(Icons.add)),
          //FloatingActionButton(
          //    onPressed: () {
          //      _list.removeAt(_curr);
          //      setState(() {
          //        _pageController.jumpToPage(_curr - 1);
          //      });
          //    },
          //    child: Icon(Icons.delete)),
        ]));
  }
} */

/* class Pages extends StatelessWidget {
  final imageUrl;
  Pages({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset(imageUrl)]),
    );
  }
}
 */