import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/signup_block/signup_bloc.dart';
import 'openpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => SignupBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: Openpage(),
        ),
      );
  }
}
