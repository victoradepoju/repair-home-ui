import 'package:flutter/material.dart';
import 'package:repair_home_app/pages/sign_up_page.dart';
import 'package:repair_home_app/widgets/logo_stamps.dart';
import 'package:repair_home_app/widgets/text_field_widget.dart';

class SignInPage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  SignInPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold( //to avoid resizing of the whole widget to keyboard
      body: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/iPhone 11 Pro Max - 2.png",
              ),     
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   SizedBox(
                    height: _deviceHeight * 0.18,
                  ),
                  Container(
                    height: 120,
                    width: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Group 3.png'),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.08,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        color: Color.fromARGB(200, 0, 0, 0),
                        fontSize: 19,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.02,
                  ),
                  textFieldWidget("Email", false),
                  SizedBox(
                    height: _deviceHeight * 0.03,
                  ),
                  textFieldWidget('Enter Password', true),
                  SizedBox(
                    height: _deviceHeight * 0.03,
                  ),
                  Container(
                    height: 60,
                    width: _deviceWidth,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 1, 48, 117),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 8),
                        ),
                      ],
                      color: const Color.fromARGB(255, 16, 77, 168),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color.fromARGB(190, 255, 255, 255),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.05,
                  ),
                  const Text(
                    '∙  Or sign in with -',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(92, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      logoStamps(const AssetImage("assets/images/googleimg.jpg")),
                      logoStamps(const AssetImage("assets/images/facebookimg.png")),
                      logoStamps(const AssetImage("assets/images/twitterimg1.png"))
                    ],
                  ),
                  SizedBox(
                    height: _deviceHeight * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "∙  Don't have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(92, 0, 0, 0),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => SignUpPage())
                            );
                        },
                        child: const Text('Sign Up'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}