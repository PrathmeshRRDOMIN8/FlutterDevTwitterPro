import 'package:flutter/material.dart';
import 'package:twitter_taskphase/createAccount.dart';
import 'package:twitter_taskphase/googleLogin.dart';
import 'package:twitter_taskphase/loginPage.dart';
import 'twitterPage.dart';

void main() => runApp(Twitter());

class Twitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
        ),
      ),
      initialRoute: 'start',
      routes: {
        'start': (context) => Twitterpage(),
        'createAccount': (context) => CreateAccount(),
        'Login': (context) => LoginPage(),
        'GoogleLogin': (context) => GoogleLoginPage(),
      },
    );
  }
}
