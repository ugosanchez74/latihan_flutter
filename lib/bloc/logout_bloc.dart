import 'package:latihan_flutter/helpers/user_info.dart';

class LogoutBloc{
  static Future logout() async {
    await UserInfo().logout();
  }
}