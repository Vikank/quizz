import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: SafeArea(
            child:Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
                  color: Colors.redAccent,
                  width: 300.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Create account',
                        style: TextStyle(fontSize: 20),)
                    ],
                  )
              ),
            )
        ),
      );
  }
}


