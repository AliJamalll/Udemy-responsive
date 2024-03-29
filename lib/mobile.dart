import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adabtive/adaptive_indecator.dart';
import 'constants.dart';

class mobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login with your account",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email Adress"
                    )
                    ,),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Bassword"
                    )
                    ,),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.teal,
                          height: 45.0,
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 45.0,
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text(
                              'REGESTER',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(child: AdaptiveIndicator(os: getOs()))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// login

///git hup
///1- checkout master
///2- update master
///3- create branch
///4- code..
///5- commit
///6- checkout master again
///7- update master
///8- checkout your local branch
///9- merge master with my current brunch
///10 - push
///11- create pull request