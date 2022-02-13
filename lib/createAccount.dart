import 'package:flutter/material.dart';
import 'package:twitter_taskphase/constants.dart';

class CreateAccount extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Image(
          image: AssetImage('images/icons8-twitter-48.png'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: const Text(
                'Create your Account',
                style: kAccountStyle,
              ),
            ),
            Column(
              children: <Widget>[
                Center(
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(15.0),
                    children: <Widget>[
                      Center(
                        child: Card(
                          child: Column(
                            children: const <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                    labelText: "Name", counterText: '50'),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "Phone Number or email address ",
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "Date of birth",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
              width: double.infinity,
              child: Divider(color: Colors.black26),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
                onPressed: () {},
                child: SizedBox(
                  height: 20,
                  width: 50,
                  child: Container(
                    child: const Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: kNextTextStyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
