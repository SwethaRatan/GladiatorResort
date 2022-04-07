import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/customTextField.dart';
import '../shared/customWidgets.dart';
import 'forgotPasswordScreen.dart';
import 'homeScreen.dart';
import 'loginScreen.dart';

class RegisterAccountScreen extends StatefulWidget {
  const RegisterAccountScreen({Key? key}) : super(key: key);
  @override
  _RegisterAccountScreenState createState() => _RegisterAccountScreenState();
}

class _RegisterAccountScreenState extends State<RegisterAccountScreen> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _phoneNumberController = new TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _logInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomWidgets.getAppBar(),
      body: Stack(
        children: [
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
                    //SizedBox(height: size.height * 0.2),
                    PageTitleText(title: 'Registration Page'),
                    SizedBox(height: 20.0),
                    const Text('Please fill the details to register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: size.height * 0.08),
                    CustomTextField(
                        validateWith: Validator.nameValidator,
                        hint: 'Enter full name',
                        readonly: false,
                        controller: _nameController),
                    CustomTextField(
                        maxCount: 10,
                        maxLines: 1,
                        validateWith: Validator.phoneValidator,
                        formatters: [FilteringTextInputFormatter.digitsOnly],
                        keyboardType: TextInputType.phone,
                        hint: 'Enter mobile number',
                        readonly: false,
                        controller: _phoneNumberController),
                    CustomTextField(
                        //validateWith: Validator.emailValidator,
                        hint: 'Enter email id',
                        readonly: false,
                        controller: _emailController),
                    CustomTextField(
                        // validateWith: Validator.passWordValidator,
                        hint: 'Enter password',
                        readonly: false,
                        controller: _passwordController),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 55,
                            width: 150,
                            child: TextButton(
                              child: const Text(
                                'Register',
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
                                      fontSize: 35,
                                      fontStyle: FontStyle.italic)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ]),

                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500)),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
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
