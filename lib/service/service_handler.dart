import 'dart:convert';

import 'package:flutter_app_bdrc/model/user.dart';
import 'package:http/http.dart' as http;

class ServiceHandler{

  // TODO get this base url from DB.
  static const String baseUrl = "http://192.168.56.1:8080/bdrc/api";

  // get all user service API full url
  static String urlGetAllUsers = baseUrl + "/getAllUsers";

  Future<List<User>> getAllUsers() async {

    List<User> users = [];

    try{

      var mapHeaders = <String, String>{
        //'Content-Type': 'application/json; charset=UTF-8',
        'Accept': "*/*",
        'connection': 'keep-alive',
        'Accept-Encoding' : 'gzip, deflate, br',
        //'Authorization': 'Bearer '+ token,
      };

      // call API
      http.Response response = await http.get(Uri.parse(urlGetAllUsers), headers: mapHeaders);

      // get response body map
      //Map mapResponseBody = jsonDecode(response.body);

      if(response.statusCode == 200)
      {
        // map response json to list of user object
        List<User>.from(json.decode(response.body).map((data) => User.fromJson(data)));
      }
      else{
        throw "Error getAllUsers(). Response code: ${response.statusCode}";
      }
    }
    catch(e){
      print('ServiceHandler exception getAllUsers():'+ e.toString());
      throw e;
    }

    return users;
  }
}