import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Bloc/wlcome_block/welcome_bloc.dart';

import 'Bloc/signup_block/signup_bloc.dart';
import 'Ui/openpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return MultiBlocProvider(providers: [
            BlocProvider(create: (context) => SignupBloc()),
            BlocProvider(create: (context)=> WelcomeBloc()),
    ],
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
