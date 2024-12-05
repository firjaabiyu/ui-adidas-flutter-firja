import 'package:adidas/auth/bloc/login/login_bloc.dart';
import 'package:adidas/data/datasource/auth_remote_datasource.dart';
import 'package:adidas/pages/chat/index/page.dart';
import 'package:adidas/pages/home/index/page.dart';
import 'package:adidas/pages/like/index/page.dart';
import 'package:adidas/pages/profile/index/page.dart';
import 'package:adidas/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(AuthRemoteDatasource()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adidas',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFFFBE6)),
          useMaterial3: true,
        ),
        home: const Splash(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
