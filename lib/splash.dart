import 'package:adidas/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'preferences/storelogo.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // berfungsi untuk mengubah warna atau style dari bagian navbar kamera (jam, wifi dan batre)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    // Membuat splash screen (kyk tampilan pertama yg di tampilkan ketika membuka app selama 3 detik), HARUS STATEFULL GABISA STATELESS soalnya kita make initState dan initState itu miliknya si STATEFULL
    Future.delayed(const Duration(seconds: 2)).then((_){
      //Naigator pushReplacement dipake agar ketika splash screen telah di jalankan dan sudah selesai kita tidak bisa balik lg ke halaman splash screen kecuali di reload ulang
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Welcome(),),);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.string(storeLogo),),
    );
  }
}
