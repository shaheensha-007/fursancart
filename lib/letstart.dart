import 'package:flutter/material.dart';

class Letstart extends StatefulWidget {
  const Letstart({Key? key}) : super(key: key);

  @override
  State<Letstart> createState() => _LetstartState();
}

class _LetstartState extends State<Letstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
        height: MediaQuery.of(context).size.height,
    width:MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/Signup.jpg"),
    ),
    ),
    )
    );
  }
}
