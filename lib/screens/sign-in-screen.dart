import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  FocusNode focus1 = FocusNode();
  FocusNode focus2 = FocusNode();
  bool isShowPicture = true;
  @override
  void initState() {
    focus1.addListener(() {
      setState(() {});
    });
    focus2.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(50, 58, 153, 1),
            Color.fromRGBO(249, 139, 252, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            getImageContiner(),
            getInputboxContiner(context),
          ],
        ),
      ),
    );
  }

  Widget getImageContiner() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      bottom: 360,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('images/rocket.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInputboxContiner(context) {
    return Column(
      children: [
        Visibility(
          visible: isShowPicture,
          child: Expanded(
            child: Container(),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Color.fromRGBO(28, 31, 46, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 40, right: 40, bottom: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sing in to',
                          style: Theme.of(context).textTheme.titleMedium),
                      SizedBox(width: 4.5),
                      ClipRRect(
                        child: Image(
                          width: 105,
                          height: 28,
                          fit: BoxFit.fill,
                          image: AssetImage('images/mood.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  TextField(
                    keyboardType: TextInputType.none,
                    focusNode: focus1,
                    decoration: InputDecoration(
                      hintText: ' Alirezaghaznavi.Tech@gmail.com',
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                          fontFamily: 'GR'),
                      label: Text(' Email'),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: focus1.hasFocus
                            ? Color.fromRGBO(243, 83, 131, 1)
                            : Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(243, 83, 131, 1), width: 3),
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    keyboardType: TextInputType.none,
                    keyboardAppearance: Brightness.dark,
                    focusNode: focus2,
                    decoration: InputDecoration(
                      hintText: ' 12345678',
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                          fontFamily: 'GR'),
                      label: focus2.hasFocus
                          ? Text(' Password')
                          : Padding(
                              padding: const EdgeInsets.only(top: 7.5),
                              child: Text(
                                ' ********************',
                                textAlign: TextAlign.center,
                              ),
                            ),
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: focus2.hasFocus
                            ? Color.fromRGBO(243, 83, 131, 1)
                            : Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(243, 83, 131, 1), width: 3),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 38),
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
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    focus1.dispose();
    focus2.dispose();
    super.dispose();
  }
}
