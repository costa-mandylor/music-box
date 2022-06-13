import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_box/styles/buttons/colors.dart';
import 'package:music_box/styles/buttons/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/BG.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Column(children: [
            Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/MusicBoxLogo.svg'),
                      const Padding(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          "Play your favorite songs and artists.",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ] //your list view content here
                    )),
            Expanded(
                flex: 2,
                child: Center(
                    child: ListView(shrinkWrap: true, children: [
                  CustomWidgets.socialButtonRect('Login with Facebook',
                      facebookColor, FontAwesomeIcons.facebookF,
                      onTap: () {}),
                  CustomWidgets.socialButtonRect(
                      'Login with Google', googleColor, FontAwesomeIcons.google,
                      onTap: () {}),
                  CustomWidgets.socialButtonRect(
                      'Login with Email', emailColor, FontAwesomeIcons.envelope,
                      onTap: () {}),
                ] //your list view content here
                        ))),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Already have an account?",
                      style:
                          TextStyle(color: Color.fromARGB(146, 255, 255, 255))),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text("Log in",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  )
                ],
              ),
            )
          ]),
        )
      ],
    ));
  }
}
