import 'package:familyApp/model/user_repository.dart';
import 'package:familyApp/pages/auth/login.dart';
import 'package:familyApp/pages/home/home.dart';
import 'package:familyApp/pages/widgets/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,UserRepository user,_){
      switch (user.status){
        case Status.Uninitialized:
              return Splash();
            case Status.Unauthenticated:
            case Status.Authenticating:
              return LoginPage();
            case Status.Authenticated:
              return Home();
            default:
              return Splash();
      }
    });
  }
}