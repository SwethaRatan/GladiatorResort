import 'package:flutter/material.dart';
import 'package:gladiator_adventureresort/shared/customTextField.dart';
import 'package:gladiator_adventureresort/shared/customWidgets.dart';
import 'package:gladiator_adventureresort/view/loginScreen.dart';

import '../shared/customTextField.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _logInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomWidgets.getAppBar(),
        body: Stack(children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/WhiteBGLight.jpg"),
                    fit: BoxFit.cover),
              )),
          SingleChildScrollView(
              child: Form(
            key: _logInFormKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.07),
                  PageTitleText(title: 'Forgot Password'),
                  SizedBox(height: 30.0),
                  Text('Please enter your new password'),
                  SizedBox(height: 40.0),
                  CustomTextField(
                      // validateWith: Validator.passWordValidator,
                      hint: 'Enter new password',
                      readonly: false,
                      controller: _passwordController),
                  SizedBox(height: 10.0),
                  CustomTextField(
                      // validateWith: Validator.passWordValidator,
                      hint: 'Confirm password',
                      readonly: false,
                      controller: _passwordController),
                  SizedBox(height: 30.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 55,
                          width: 150,
                          child: TextButton(
                            child: const Text(
                              'Confirm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor:
                                    Color.fromARGB(255, 233, 233, 233),
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
                              Navigator.push<Widget>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 55,
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
                                    Color.fromARGB(255, 233, 233, 233),
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
                            },
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ))
        ]));
  }
}
