import 'package:flutter/material.dart';
import 'package:fursancart/welcome.dart';

import 'home.dart';

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
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Signup.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
          Container(
          child: TextFormField(
          decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          icon: Icon(
            Icons.email, color: Color(0xff767676),
          ),
        ),
      ),
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffF1F1F1), width: 2),
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    SizedBox(
    height: 30,
    ),
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
    height:30,
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
    color: Color(0xff264050),
    borderRadius: BorderRadius.circular(15),
    ),
    child:Center(
    child: Text("Sign up",
    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),
    ),
    ),
    ),
    ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text("Alredy have an account? "),
                ),TextButton( child:Text("login",style: TextStyle(color:Colors.black,fontSize:15,fontWeight:FontWeight.bold ),),onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext a)=>Welcome()));}
                ),
              ],
            ),

          ]
    ),
    ),

    );
  }
}
