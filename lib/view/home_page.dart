import 'package:flutter/material.dart';
import 'package:flutter_app_bdrc/model/user.dart';
import 'package:flutter_app_bdrc/service/service_handler.dart';
import 'package:flutter_app_bdrc/view/users_list_page.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: body(context),
      appBar: PlatformAppBar(
        backgroundColor: Colors.deepOrange,
        cupertino: (_, __) => CupertinoNavigationBarData(
          title: const Center(child: Text(appBarDdRecruit))
        ),
        material: (_, __) => MaterialAppBarData(
            title: const Center(child: Text(appBarDdRecruit))
        ),
      ),
    );
  }

  body(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          const Center(child:
            Text(txtHomePageTitle, style:TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ),
          const Divider(),
          const SizedBox(height: 10,),

          SizedBox(
            height: 300,
            child: Text(txtHomePageBody, style: const TextStyle(fontSize: 15),),
          ),

          const Divider(),

          PlatformButton(
            color: appPrimaryColor,
            onPressed: () => _navigateToNextScreen(context),
            child: PlatformText('Screen 2', style: const TextStyle(color: Colors.white),),
            materialFlat: (_, __)    => MaterialFlatButtonData(),
            cupertinoFilled: (_, __) => CupertinoFilledButtonData(),
          )

        ],
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) async {

    // shows loading widget
    showCircularProgressIndicator(context);

    // TODO Remove this dummy
    //await Future.delayed(const Duration(seconds: 6), (){});
    //List<User> users = getDummyUsers();

    // get list of users from DB
    List<User> users = await ServiceHandler().getAllUsers();

    // cancel/close loading widget
    Navigator.pop(context);

    // calls new users list page
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => UsersListPage(users: users)));
  }
}
