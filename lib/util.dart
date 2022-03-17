
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

const String txtHomePageTitle = 'What POPI is?';
const String txtHomePageBody = "The Protection of Personal Information Act (or POPI Act) is South Africa’s equivalent of the EU GDPR. It sets some conditions for responsible parties (called controllers in other jurisdictions) to lawfully process the personal information of data subjects (both natural and juristic persons). The POPI Act does not stop you from processing and does not require you to get consent from data subjects to process their personal information. Whoever decides why and how to process personal information is responsible for complying with the conditions. There are eight general conditions and three extra conditions. The responsible party is also responsible for a failure by their operators (those who process for them) to meet the conditions.";

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