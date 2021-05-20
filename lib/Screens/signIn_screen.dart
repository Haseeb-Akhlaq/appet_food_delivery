import 'package:appet_food_delivery/Screens/home_screen.dart';
import 'package:appet_food_delivery/Screens/signUpScreen.dart';
import 'package:appet_food_delivery/constants/colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/signIn.png'), fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 200),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 10, top: 5, bottom: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                              onSaved: (value) {
                                email = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter valid email';
                                }
                                if (!value.contains('@') ||
                                    !value.contains('.')) {
                                  return 'Please enter valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 10, top: 5, bottom: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                              onSaved: (value) {
                                password = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter valid password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be 6 character long';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Forgot Password?  '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text('SignUp'),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
