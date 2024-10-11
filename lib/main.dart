import 'package:adidas/pages/chat/index/page.dart';
import 'package:adidas/pages/home/index/page.dart';
import 'package:adidas/pages/like/index/page.dart';
import 'package:adidas/pages/profile/index/page.dart';
import 'package:adidas/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adidas',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFFFBE6)),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int selectedIndex = 0;

  IconButton buildIconButton(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(
        icon,
        size: 30,
        color: selectedIndex == index ? Colors.black : Color(0xffC9C9C9),
      ),
    );
  }

  List<Widget> halaman = [
    HomePage(),
    chatPage(),
    likePage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          halaman[selectedIndex],
          Positioned(
            bottom: 40,
            left: 40,
            right: 40,
            child: Container(
              width: 334,
              padding: EdgeInsets.symmetric(vertical: 3),
              decoration: BoxDecoration(
                color: Color(0xffFFFBE6),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIconButton(Icons.home, 0),
                buildIconButton(Icons.chat_rounded, 1),
                buildIconButton(Icons.favorite, 2),
                buildIconButton(Icons.person, 3),
              ],
            ),
            ),
          ),
        ],
      )
    );
  }
}
