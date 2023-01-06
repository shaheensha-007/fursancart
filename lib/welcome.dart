import 'package:flutter/material.dart';
import 'package:fursancart/home.dart';

import 'letstart.dart';

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

            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext a)=>Home()));},
              child: Container(
                width:350,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xffFFC113),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Center(
                  child: Text("LOG IN",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                ),
              ),


            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:230),
                  child: TextButton(onPressed: (){}, child: Text("Forgot Password?",selectionColor: Colors.cyan,)),
                ),
              ],
            ),
            Container(width: 100,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),fit: BoxFit.contain),shape: BoxShape.circle),
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png"),fit: BoxFit.contain),shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            TextButton( child:Text("Dont have an account?",style: TextStyle(color:Colors.black),),onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext a)=>Letstart()));}

            ),
          ],
        ),

        ),
      );

  }
}
