import 'package:flutter/material.dart';

class likePage extends StatefulWidget {
  const likePage({super.key});

  @override
  State<likePage> createState() => _likePageState();
}

class _likePageState extends State<likePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Like"),
    );
  }
}
