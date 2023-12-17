import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 185),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: Container(
                          width: 340,
                          height: 348,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            gradient: LinearGradient(
                                end: Alignment.bottomRight,
                                begin: Alignment.topLeft,
                                colors: [
                                  Color.fromRGBO(225, 225, 225, 0.5),
                                  Color.fromRGBO(225, 225, 225, 0.2)
                                ]),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 38),
                              Container(
                                width: 129,
                                height: 129,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: AssetImage('images/ali.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              SizedBox(height: 13),
                              Text('Alireza Ghaznavi',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              SizedBox(height: 23),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Confirm',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                style: TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Color(0xffF35383),
                                    maximumSize: Size(129, 46),
                                    minimumSize: Size(129, 46),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                              ),
                              SizedBox(height: 30),
                              Text('switch account',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28, top: 132),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'dont have an account? ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'GB',
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                ),
                Text(
                  '/ Sign up',
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 14,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
