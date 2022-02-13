import 'package:flutter/material.dart';
import 'constants.dart';

class Twitterpage extends StatefulWidget {
  @override
  State<Twitterpage> createState() => _TwitterpageState();
}

class _TwitterpageState extends State<Twitterpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Image(
              image: AssetImage('images/icons8-twitter-48.png'),
            ),
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          Column(
                            children: [
                              const Text(
                                kFirstPageText,
                                style: kFirstPageStyle,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 120.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, 'GoogleLogin');
                                      },
                                      child: const Card(
                                        elevation: 10.0,
                                        shape: kRectangleRoundCard,
                                        color: Colors.white,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 30.0),
                                        //padding: EdgeInsets.all(10.0),
                                        child: Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: ListTile(
                                              title: Text(
                                                'Continue with Google',
                                                textAlign: TextAlign.center,
                                                style: kContinueWithGoogle,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        SizedBox(
                                          height: 20.0,
                                          width: 125.0,
                                          child: Divider(color: Colors.black),
                                        ),
                                        Text('\tOr\t'),
                                        SizedBox(
                                          height: 20.0,
                                          width: 125.0,
                                          child: Divider(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.pushNamed(
                                              context, 'createAccount');
                                        });
                                      },
                                      child: const Card(
                                        elevation: 10.0,
                                        shape: kRectangleRoundCard,
                                        color: Colors.blue,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 30.0),
                                        //padding: EdgeInsets.all(10.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: ListTile(
                                            title: Text(
                                              'Create Account',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'By signing up, you agree to our \nTerms, Privacy Policy, and Cookie Use',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                    width: 250.0,
                    child: Divider(color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have an account already ? ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, 'Login');
                          });
                        },
                        child: const Text(
                          kLoginText,
                          style: kLoginTextStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
