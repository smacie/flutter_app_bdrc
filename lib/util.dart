
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/user.dart';

const String appBarDdRecruit = 'BD Recruit';
const String appBarTitleUserList = 'Users List';

const Color appPrimaryColor =  Colors.deepOrange;
const Color appSecondaryColor =  Colors.lightBlue;

void showCircularProgressIndicator(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Center(child: CircularProgressIndicator(),);
      });
}

List<User> getDummyUsers(){
  List<User> dummyUsers = [];

  User u1  = User("u1", "Salomao Jr.", "Developer", "M", true);
  User u2  = User("u2", "Will Smith", "Actor", "M", true);
  User u3  = User("u3", "Mariah Carey", "Singer", "F", true);

  dummyUsers.add(u1);
  dummyUsers.add(u2);
  dummyUsers.add(u3);

  return dummyUsers;
}