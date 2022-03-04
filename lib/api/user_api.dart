import 'package:dio/dio.dart';

import 'base_response.dart';
import 'package:http/http.dart'as http;

class UserApi {
    static String baseUrl="nguyenxuantri.xyz/";
    static String _getUser="testselect";

    Dio _dio=Dio();

    Future <dynamic>getuser()async{
      try{
        final data=await _dio.get("https://nguyenxuantri.xyz/testselect");
        return BaseResponse(data);
      }catch(e){
        print("loi$e");
      }
    }
}