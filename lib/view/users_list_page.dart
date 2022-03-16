import 'package:flutter/material.dart';
import 'package:flutter_app_bdrc/model/user.dart';
import 'package:flutter_app_bdrc/util.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class UsersListPage extends StatelessWidget {

  final List<User> users;
  const UsersListPage({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: bodyUsersList(context),
      appBar: PlatformAppBar(
        backgroundColor: Colors.deepOrange,
        cupertino: (_, __) => CupertinoNavigationBarData(
            title: const Center(child: Text(appBarTitleUserList))
        ),
        material: (_, __) => MaterialAppBarData(
            title: const Center(child: Text(appBarTitleUserList))
        ),
      ),
    );
  }

  bodyUsersList(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      child:  ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context,int index){
            return Card(
                child: ListTile(
                  title:Text("${users[index].name}"),
                  subtitle: Text("${users[index].profession}", style: const TextStyle(color: appSecondaryColor),),
                )
            );
          }
      ),
    );
  }
}
