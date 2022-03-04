import 'dart:convert';

import 'package:get/get.dart';
import 'package:test_dio/api/user_api.dart';
import 'package:test_dio/model/user_model.dart';

import '../api/base_response.dart';

class UserController extends GetxController{
  var listUser=List<UserModel>.empty(growable: true).obs;
  UserApi _userApi =UserApi();

  getUsers()async{
    BaseResponse response=await _userApi.getuser();
    if(response.statusCode!<400){
      var result=json.decode(response.data); // quan trong
      var results=result["result"] as List<dynamic>;
      List<UserModel>listUserModel=[];
      results.forEach((element) {
        listUserModel.add(UserModel.fromJson(element));
      });
      listUser.assignAll(listUserModel);
      print("jello${listUser[0].PhoneUser}");

    }
  }
}