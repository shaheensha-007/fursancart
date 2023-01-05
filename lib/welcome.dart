import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Login.jpg"),
          )
        ),
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  icon: Icon(
                    Icons.account_circle_outlined,color: Color(0xff767676),
                  ),
                  hintText: 'username',
                  hintStyle: TextStyle(fontSize: 14),),
              ),
              width: 350,height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF1F1F1), width: 2),
                color: Color(0xffF1F1F1) ,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(
              height:50,
            ),
            Container(width: 350,height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  icon: Icon(
                    Icons.lock_open,color: Color(0xff767676),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 14),),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF1F1F1), width: 2),
                color: Color(0xffF1F1F1) ,
                borderRadius: BorderRadius.circular(8),
              ),

            )
          ],
        ),

        ),
      );

  }
}
