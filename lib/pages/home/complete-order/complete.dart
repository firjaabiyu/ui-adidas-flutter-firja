import 'package:adidas/pages/home/index/page.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class completePage extends StatefulWidget {
  const completePage({super.key});

  @override
  State<completePage> createState() => _completePageState();
}

class _completePageState extends State<completePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 480,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/shoescat/samba-og-white.png"),
              const SizedBox(height: 20),
              const Text(
                "Samba OG - White",
                style: TextStyle(
                  color: Color(0xff4E4E4E),
                  fontSize: 20,
                ),
              ),
              const Text(
                "Your Order Processed!",
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => navBar()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(6.5),
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Text("Back to Home", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
