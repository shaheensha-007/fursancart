import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fursancart/Signup_repository/signupApi..dart';
import 'package:meta/meta.dart';

import '../usermodel.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
 late Usermodel signup;
 SignupApi signupApi=SignupApi();
  SignupBloc() : super(SignupInitial()) {
    on<FetchSignupEvent>((event, emit)async {
      // TODO: implement event handler
      emit(SignupblocLoading());
      try{

        signup = await signupApi.signup(event.email,event.username,event.password);
        emit(SignupblocLoaded());
      } catch(e){
        emit(SignupblocError());
      }
    });
  }
}
