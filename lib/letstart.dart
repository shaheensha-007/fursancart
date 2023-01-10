import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/signup_block/signup_bloc.dart';
import 'package:fursancart/welcome.dart';

import 'home.dart';

class Letstart extends StatefulWidget {
  const Letstart({Key? key}) : super(key: key);

  @override
  State<Letstart> createState() => _LetstartState();
}

class _LetstartState extends State<Letstart> {
  TextEditingController username=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if(state is SignupblocLoaded){
          print('loaded');
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
        }
        if (state is SignupblocLoading){

          print('loding');
          showDialog(context: context,
        builder: (BuildContext a)=>AlertDialog(
        content: Container(
        width: 30,
        height: 20,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
        SizedBox(
        height: 20,
        ),
        Text("please wait",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w400),)
        ],
        ),
        ),
        title: Center(child: Text("loading"),),
        ));
        }
        if(state is SignupblocError){
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Already registered")));
        }
      },
    );
    return Scaffold(resizeToAvoidBottomInset: false,
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
          child: TextFormField(controller: email,
          decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          icon: Icon(
            Icons.email, color: Color(0xff767676),
          ),
            hintText: ("email"),
            hintStyle: TextStyle(fontSize: 14),
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
    child: TextFormField(controller: username,
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
    child: TextFormField(controller: password,
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
    GestureDetector(onTap: (){
      BlocProvider.of<SignupBloc>(context).add(FetchSignupEvent(username: username.text, email: email.text, password: password.text));
    },
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
