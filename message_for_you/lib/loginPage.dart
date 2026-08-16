// ignore_for_file: avoid_print
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String selectedTheme = 'Purple';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 21, 73),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/purple_theme/scaff3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.fromLTRB(25, 60, 25, 40),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/purple_theme/loginBack.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 170),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.7),
                            blurRadius: 30,
                            spreadRadius: 2,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: buildText(
                        title: ' Sign in to continue your journey ',
                        colorString: Colors.white,
                        fontNum: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  alignBuild(
                    context: context,
                    title: ' Full Name ....',
                    url: 'assets/images/purple_theme/user_icon.png',
                  ),
                  const SizedBox(height: 10),
                  alignBuild(
                    context: context,
                    title: ' Email ....',
                    url: 'assets/images/purple_theme/mail.png',
                  ),
                  const SizedBox(height: 10),
                  alignBuild(
                    context: context,
                    title: ' Password ....',
                    url: 'assets/images/purple_theme/password.png',
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: buildText(
                        title: ' Choose Your Theme ',
                        colorString: Colors.white,
                        fontNum: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: buildColumn(
                          theme: 'Black',
                          themeColor: Colors.black,
                          icon: Icons.brightness_3,
                        ),
                      ),
                      Expanded(
                        child: buildColumn(
                          theme: 'Purple',
                          themeColor: Colors.purple,
                          icon: Icons.star,
                        ),
                      ),
                      Expanded(
                        child: buildColumn(
                          theme: 'Blue',
                          themeColor: Colors.blue,
                          icon: Icons.water_drop,
                        ),
                      ),
                      Expanded(
                        child: buildColumn(
                          theme: 'Pink',
                          themeColor: Colors.pink,
                          icon: Icons.favorite_outlined,
                        ),
                      ),
                      Expanded(
                        child: buildColumn(
                          theme: 'White',
                          themeColor: const Color.fromARGB(255, 229, 223, 223),
                          icon: Icons.sunny,
                        ),
                      ),
                      Expanded(
                        child: buildColumn(
                          theme: 'Red',
                          themeColor: const Color.fromARGB(255, 198, 15, 2),
                          icon: Icons.local_fire_department,
                        ),
                      ),
                      Expanded(
                        child: buildColumn(
                          theme: 'Green',
                          themeColor: Colors.green,
                          icon: Icons.eco,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text buildText({
    required String title,
    required Color colorString,
    required int fontNum,
    fontWeight = FontWeight.normal,
  }) {
    return Text(
      title,
      style: GoogleFonts.alike(
        textStyle: TextStyle(
          color: colorString,
          fontSize: fontNum.toDouble(),
          overflow: TextOverflow.ellipsis,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

  Align alignBuild({
    required BuildContext context,
    required String title,
    required String url,
  }) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: (MediaQuery.of(context).size.width) * 3 / 4,
        height: 55,
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 22, 0, 46),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            ImageIcon(
              AssetImage(url),
              color: const Color.fromARGB(255, 170, 0, 255),
              size: 24.0,
            ),
            Expanded(
              child: TextField(
                style: GoogleFonts.alike(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                decoration: InputDecoration(
                  hintText: title,
                  hintStyle: GoogleFonts.alike(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 168, 145, 176),
                      fontSize: 15,
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

  Column buildColumn({
    required String theme,
    required Color themeColor,
    required IconData icon,
  }) {
    return Column(
      children: [
        IconButton(
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: themeColor,
              child: Icon(icon, color: Colors.white, size: 20),
            ),
          ),
          onPressed: () {
            setState(() {
              selectedTheme = theme;
            });
          },
        ),
        buildText(title: theme, colorString: Colors.white, fontNum: 15),
        if (selectedTheme == theme)
          Icon(Icons.check, color: themeColor, size: 20),
      ],
    );
  }
}
