import 'package:flutter/material.dart';
import 'package:talked1/screens/authentication/sign_in_screen.dart';
import 'package:talked1/screens/authentication/sign_up_screen.dart';


class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool wantToLogin = true;

  @override
  Widget build(BuildContext context) => wantToLogin 
    ? SignInScreen(onClickedSignUp: toggle) 
    : SignUpScreen(onClickedSignIn: toggle);

  void toggle() => setState(() => wantToLogin = !wantToLogin);
}
