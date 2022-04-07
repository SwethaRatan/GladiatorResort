import 'package:flutter/material.dart';
import 'package:gladiator_adventureresort/shared/customTextField.dart';
import 'package:gladiator_adventureresort/view/registerScreen.dart';

import '../shared/customWidgets.dart';
import 'forgotPasswordScreen.dart';
import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _logInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/SigningBG.jpg"),
                    fit: BoxFit.cover),
              )),
          SingleChildScrollView(
            child: Form(
              key: _logInFormKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.2),
                    PageTitleText(title: 'Login Page'),
                    SizedBox(height: 20.0),
                    Text('Please fill the details to login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: size.height * 0.1),
                    CustomTextField(
                        //validateWith: Validator.emailValidator,
                        hint: 'Enter your email',
                        readonly: false,
                        controller: _emailController),
                    CustomTextField(
                        // validateWith: Validator.passWordValidator,
                        hint: 'Enter password',
                        readonly: false,
                        controller: _passwordController),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text('Forgot Password ?',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                //fontFamily: 'Hurricane',
                                fontSize: 13,
                                //letterSpacing: 3.0,
                                //wordSpacing: 5.0,
                                fontWeight: FontWeight.w600)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 150,
                            child: TextButton(
                              child: const Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor:
                                      Color.fromARGB(255, 214, 205, 205),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.green,
                                        width: 2,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  textStyle: const TextStyle(
                                      fontSize: 35,
                                      fontStyle: FontStyle.italic)),
                              onPressed: () {
                                Navigator.push<Widget>(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 150,
                            child: TextButton(
                              child: const Text(
                                'Cancel',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor:
                                      Color.fromARGB(255, 214, 205, 205),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.green,
                                        width: 2,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  padding: const EdgeInsets.all(15),
                                  textStyle: const TextStyle(
                                      fontSize: 35,
                                      fontStyle: FontStyle.italic)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ]),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


/* body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/SigningBG.jpg"),
              fit: BoxFit.cover),
        ),
        //height: size.height,
        //width: size.width,
        //decoration: BoxDecoration(
        //    image: DecorationImage(
        //        fit: BoxFit.cover,
        //        image: AssetImage("assets\images\SigningBG.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          chil
        ),
      ), */