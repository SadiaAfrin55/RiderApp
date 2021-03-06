
import 'package:logger/logger.dart';

import '../../Data/Login/Login.dart';
import '../../Network/LoginNetworkService/login_network.dart';


class LoginRepository{
  var logger = Logger();
  LoginNetwork loginNetwork=LoginNetwork();
  Future<Login> logIn(String email, String password) async {
    Map<String, String> data = {
      "employeeId":email,
      "password": password,
    };
    final userRaw=await loginNetwork.logIn(data);
    logger.d(Login.fromJson(userRaw));

    return Login.fromJson(userRaw);
  }


}