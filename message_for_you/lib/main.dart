// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 184, 131, 194),

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 184, 131, 194),

          leading: IconButton(
            onPressed: null,
            icon: const Icon(
              Icons.menu,
              size: 40,
              color: Color.fromARGB(255, 78, 3, 115),
            ),
          ),

          actions: const [
            Icon(
              Icons.notifications_none,
              size: 40,
              color: Color.fromARGB(255, 78, 3, 115),
            ),
          ],
        ),

        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),

          child: SingleChildScrollView(
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                buildText(
                  title: 'Good Morning, Alaa ',
                  colorString: Color.fromARGB(255, 43, 0, 59),
                  fontNum: 30,
                  fontWeight: FontWeight.bold,
                ),
                buildText(
                  title: 'You\'re doing your best, and that\'s enough.',
                  colorString: Color.fromARGB(255, 255, 255, 255),
                  fontNum: 18,
                ),
                const SizedBox(height: 12),

                // Today's Message
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 5, bottom: 15),

                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/purple_theme/msgback.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),

                  child: Column(
                    children: [
                      const SizedBox(height: 20),

                      Row(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.email_outlined,
                            size: 25,
                            color: Color.fromARGB(255, 38, 1, 56),
                          ),
                          buildText(
                            title: 'Today\'s Message',
                            colorString: Colors.black,
                            fontNum: 14,
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2,

                        child: Text(
                          'Every small step counts. Keep going.',
                          style: GoogleFonts.alike(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              overflow: TextOverflow.visible,
                              wordSpacing: 3,
                            ),
                          ),
                          maxLines: 11,
                          textAlign: TextAlign.center,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Container(
                        width: (MediaQuery.of(context).size.width / 2) + 20,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),

                        child: Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.alarm_rounded,
                              size: 25,
                              color: Color.fromARGB(255, 38, 1, 56),
                            ),
                            buildText(
                              title: 'Next message arround 8:30 PM',
                              colorString: Colors.black,
                              fontNum: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Grid
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1.1,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    buildContainer(
                      'assets/images/purple_theme/messages.jpg',
                      'My messages',
                      'Messages to myself',
                    ),
                    buildContainer(
                      'assets/images/purple_theme/random.png',
                      'Random mode',
                      'Get random inspirations',
                    ),
                    buildContainer(
                      'assets/images/purple_theme/Schedule.png',
                      'Schedule',
                      'Plan a amessage for later',
                    ),
                    buildContainer(
                      'assets/images/purple_theme/books.jpg',
                      'Categories',
                      'Chose what inspires you',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 184, 131, 194),
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromARGB(255, 108, 1, 132),
      unselectedItemColor: const Color.fromARGB(255, 233, 221, 243),
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 108, 1, 132),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 32),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Schedule',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }

  Container buildContainer(String url, String title, String subTitle) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 5,
          color: const Color.fromARGB(255, 94, 16, 136),
        ),
        color: const Color.fromARGB(255, 233, 221, 243),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              null;
            },
            icon: Image(
              image: AssetImage(url),
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          buildText(
            title: title,
            colorString: Colors.black,
            fontNum: 14,
            fontWeight: FontWeight.bold,
          ),
          buildText(
            title: subTitle,
            colorString: Color.fromARGB(255, 108, 107, 107),
            fontNum: 12,
          ),
        ],
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
}
