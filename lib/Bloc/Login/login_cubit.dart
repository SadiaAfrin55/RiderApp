import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:rider_app/Repository/LoginRepository/login_repository.dart';

import '../../Data/Login/Login.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  var logger = Logger();
  LoginRepository loginRepository  = LoginRepository();
  LoginCubit() : super(LoginInitial());

  void Login(String email, String password){
    loginRepository.logIn(email,password).then((value) => {
      logger.d(value.status.toString()),
      if(value!=null){
        emit(LoginUser(login: value))
      }
    });
  }
}
